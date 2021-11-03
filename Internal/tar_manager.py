# Script control setup area
# script info
__script__.title = 'Generate Tar File'
__script__.version = '1.0'

import traceback
import socket, os, glob

#_binFile = "/mnt/zfstor1/bilby/cycle/current/data/histserv/%s/DATASET_%i/EOS.bin"
# % (daqDirName, int(datasetNumbers))
_default_path = 'W:/cycle/current/data/sics/'

g = Group('Tar Manager')
#g.numColumns = 2

g_ctr = Group('Control')
g_ctr.numColumns = 2
g_ctr.hideTitle = True

a_res = Act('reset()', 'Reset')
a_fill = Act('auto_fill()', 'Auto Fill')

g_ctr.add(a_res, a_fill)

# Use below example to create parameters.
# The type can be string, int, float, bool, file.
g_src = Group('Source')
g_src.hideTitle = True

p_hdf = Par('file', '', command = 'find_bin()')
p_hdf.title = 'HDF File'
p_hdf.ext = '*.hdf'
p_hdf.width = 440
p_hdf.h_fill = True
#p_hdf.colspan = 2

p_bin = Par('file', '')
p_bin.title = 'Bin File'
p_bin.ext = '*.bin'
p_bin.width = 440
p_bin.h_fill = True
#p_bin.colspan = 2

g_src.add(p_hdf, p_bin)

g_tar = Group('tar')
g_tar.hideTitle = True
g_tar.numColumns = 2

p_tar = Par('string', _default_path, options = [_default_path])
p_tar.title = 'Tar File'

p_name = Par('file', '')
p_name.title = ''
p_name.ext = '*.hdf'
p_name.width = 178

g_tar.add(p_tar, p_name)

g_add = Group('Address')
g_add.hideTitle = True
g_add.numColumns = 2

_ics_add = 'ics1-bilby'
_das_add = 'das1-bilby'
p_add = Par('string', _ics_add, options = [_ics_add, _das_add])
p_add.title = 'Address'

p_port = Par('int', 8123)
p_port.title = ''

g_add.add(p_add, p_port)

g.add(g_ctr, g_src, g_tar, g_add)

def reset():
    p_hdf.value = ''
    p_bin.value = ''
    p_name.value = ''
    p_add.value = _ics_add
    p_port.value = 8123
    show_output('')
    
def auto_fill():
    list_of_files = filter( os.path.isfile,
                            glob.glob(_default_path + 'BBY*.hdf') )

    # Sort list of files based on last modification time in ascending order
    list_of_files = sorted( list_of_files,
                            key = os.path.getmtime)
    # Iterate over sorted list of files and print file path 
    # along with last modification time of file 
    for file_path in list_of_files:
        fn = os.path.basename(file_path)
        tn = _default_path + fn[:10] + ".tar"
        if not os.path.isfile(tn):
            p_hdf.value = file_path
            return
    slog('all HDF files have been archived')
    show_output('')
    
def find_bin():
    hdfInput = p_hdf.value
    if hdfInput.strip() == '':
        p_bin.value = ''
        p_name.value = ''
        return
    if len(hdfInput) < 8 or hdfInput[-7:].lower() != '.nx.hdf':
        raise RuntimeError("unknown hdf extension")
    
    p_hdf.value = hdfInput.replace('\\', '/')
    ds = df[str(hdfInput)]

    daqDirName = str(ds['/entry1/instrument/detector/daq_dirname'])
    datasetNumbers = ds['/entry1/instrument/detector/dataset_number']
    
    if len(ds) > 1:
        datasetNumbers = datasetNumbers[0]
    binFile = "V:/%s/DATASET_%i/EOS.bin" % (daqDirName, int(datasetNumbers))
    p_bin.value = binFile
    
    p_name.value = hdfInput[-17:-7] + ".tar"
    show_output('')

p_out = Par('string', '')
p_out.title = 'Output'
p_out.height = 48
p_out.enabled = False

# Use below example to create a button
a_sub = Act('submit()', 'Submit') 
a_sub.rowspan = 2
a_sub.height = 48

def show_output(msg):
    if msg != None:
        idx = msg.find('"')
        if idx >= 0 and idx < len(msg) - 1:
            msg = msg[idx :]
        p_out.value = msg
    else :
        p_out.value = ''
    
def submit():

    hdfInput = p_hdf.value
    binInput = p_bin.value 
    tarFile = p_name.value
    
    try:
#        __data_file_timestamp__ = os.path.getmtime(__file_to_add__)
#        slog('last file timestamp: ' + str(__data_file_timestamp__))
        
#        def remote_path(local):
#            result = local.replace('\\', '/')
#            if result[0:2] == 'W:':
#                result = "/mnt/zfstor1/bilby" + result[2:]
#            elif result[0:2] == 'V:':
#                result = "/mnt/zfstor1/bilby" + result[2:]
#            return result
        
        is_remote = True
        hdfInput = hdfInput.replace('\\', '/')
        if hdfInput[0:2] != "W:":
            is_remote = False
        else:
            hdfFile = "/mnt/zfstor1/bilby" + hdfInput[2:]
        binInput = binInput.replace('\\', '/')
        if binInput[0:2] != "V:":
            is_remote = False
        else:
            binFile = "/mnt/zfstor1/bilby/cycle/current/data/histserv" + binInput[2:]
            
        if is_remote:
            
            
            msg = "SRC:\"%s\",\"%s\"\r\nDST:\"%s\"\r\n" % (hdfFile, binFile, tarFile)
            
            host = p_add.value
            port = p_port.value
            
            # create TCP/IP socket
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.connect((host, port))
            
            try:
                # receive welcome message from daemon
                welcome = sock.recv(1024)
                if not welcome:
                    raise RuntimeError("connection broken")
            
                slog( str(welcome) )
                slog( str(msg) )
            
                sock.send(msg)
                response = ""
                while True:
                    recv = sock.recv(1024)
                    if not recv:
                        break
                    response += recv
            
                slog( str(response), 'ERROR' in response)
                show_output(response)
            finally:
                sock.close()
        else:
            e = 'Archiving local files is not supported'
            slog(e, True)
            show_output(e)
    except:
        msg = traceback.format_exc()
        slog(msg, True)
        show_output(msg)
        traceback.print_exc(file=sys.stdout)
#        slog( 'failed to create tar file for ' + __file_to_add__ )
    finally:
        df.datasets.clear()


# Use below example to create a new Plot
# Plot4 = Plot(title = 'new plot')

# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    # Use the provided resources, please don't remove.
    submit()
    
def __dispose__():
    global Plot1
    global Plot2
    global Plot3
    Plot1.clear()
    Plot2.clear()
    Plot3.clear()
