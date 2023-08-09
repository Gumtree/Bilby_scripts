# Script control setup area
# script info
__script__.title = 'Generate Tar File'
__script__.version = '2.0'

import traceback
import socket, os, glob
import tarfile

#_binFile = "/mnt/zfstor1/bilby/cycle/current/data/histserv/%s/DATASET_%i/EOS.bin"
# % (daqDirName, int(datasetNumbers))
_default_path = 'Z:/cycle/current/data/sics/'
_localpath_prefix = 'Z:/cycle/'
_default_cycle = 'current'
_sics_data = '/data/sics/'
_bin_data = '/data/histserv/'

_remotepath_prefix = '/mnt/zfstor1/bilby/cycle/'

g = Group('Remote Tar Service')
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

p_bin = Par('string', '')
p_bin.title = 'Bin File'
p_bin.ext = '*.bin'
p_bin.width = 440
p_bin.h_fill = True
p_bin.enabled = False
#p_bin.colspan = 2

g_src.add(p_hdf, p_bin)

g_tar = Group('tar')
g_tar.hideTitle = True
g_tar.numColumns = 2

#p_tar = Par('string', _default_path, options = [_default_path])
p_tar = Par('string', _default_path)
p_tar.title = 'Tar File'
p_tar.enabled = False

p_name = Par('string', '')
p_name.title = ''
p_name.ext = '*.tar'
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
                            key = os.path.getmtime, 
                            reverse = True)
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
    
def get_cycle_id(path):
    path = path.replace('\\', '/')
    if not path.startswith(_localpath_prefix):
        raise PermissionError('file path must start with ' + _localpath_prefix)
    path = path[len(_localpath_prefix):]
    return path[:path.find('/')]
    
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
#    binFile = "V:/%s/DATASET_%i/EOS.bin" % (daqDirName, int(datasetNumbers))
    cycleid = get_cycle_id(p_hdf.value)
    binFile = _remotepath_prefix + cycleid + _bin_data + "%s/DATASET_%i/EOS.bin" % (daqDirName, int(datasetNumbers))
    p_bin.value = binFile
    
    p_tar.value = _localpath_prefix + cycleid + _sics_data
    p_name.value = hdfInput[-17:-7] + ".tar"
    show_output('')

g_ctr = Group('Control')
g_ctr.hideTitle = True
p_out = Par('string', '')
p_out.title = 'Output'
p_out.height = 48
p_out.enabled = False

# Use below example to create a button
a_sub = Act('submit()', 'Submit') 
a_sub.rowspan = 2
a_sub.height = 48
g_ctr.add(p_out, a_sub)

g.add(g_ctr)

def show_output(msg):
    if msg != None:
        idx = msg.find('"')
        if idx >= 0 and idx < len(msg) - 1:
            msg = msg[idx :]
        p_out.value = msg
    else :
        p_out.value = ''
    
def submit():

    hdfInput = p_hdf.value.replace('\\', '/')
    binInput = p_bin.value 
#    tarFile = "/mnt/zfstor1/bilby/cycle/current/data/sics/" + p_name.value
#    tarFile = _remotepath_prefix + ''
    
    try:
        cycleid = get_cycle_id(p_hdf.value)
    except NameError as ne:
        e = str(ne) + ', please use the Local Tar Command interface below to pack local files.'
        slog(e, True)
        show_output(e)
        return
    except Exception as ce:
        e = str(ce)
        slog(e, True)
        show_output(e)
        return
    
    try:
#        cycleid = get_cycle_id(p_hdf.value)
        tarFile = _remotepath_prefix + cycleid + _sics_data
        tarFile += p_name.value
#        hdfInput = hdfInput.replace('\\', '/')
        hdfFile = _remotepath_prefix + cycleid + _sics_data + os.path.basename(hdfInput)
        binFile = binInput
#        __data_file_timestamp__ = os.path.getmtime(__file_to_add__)
#        slog('last file timestamp: ' + str(__data_file_timestamp__))
        
#        def remote_path(local):
#            result = local.replace('\\', '/')
#            if result[0:2] == 'W:':
#                result = "/mnt/zfstor1/bilby" + result[2:]
#            elif result[0:2] == 'V:':
#                result = "/mnt/zfstor1/bilby" + result[2:]
#            return result
        
#        if hdfInput[0:2] != "Z:":
#            is_remote = False
#        else:
#        hdfFile = "/mnt/zfstor1/bilby" + hdfInput[2:]
#        binInput = binInput.replace('\\', '/')
#        if not path.startswith(_localpath_prefix):
#            is_remote = False
#        else:
#            binFile = "/mnt/zfstor1/bilby/cycle/current/data/histserv" + binInput[2:]
            
        msg = "SRC:\"%s\",\"%s\"\r\nDST:\"%s\"\r\n" % (hdfFile, binFile, tarFile)
        slog(msg)
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
    except:
        msg = traceback.format_exc()
        slog(msg, True)
        show_output(msg)
        traceback.print_exc(file=sys.stdout)
#        slog( 'failed to create tar file for ' + __file_to_add__ )
    finally:
        df.datasets.clear()


g_loc = Group('Local Tar Command')

pl_hdf = Par('file', '', command = 'find_bin()')
pl_hdf.title = 'HDF File'
pl_hdf.ext = '*.hdf'
pl_hdf.width = 440
pl_hdf.h_fill = True
#p_hdf.colspan = 2

pl_bin = Par('file', '')
pl_bin.title = 'Bin File'
pl_bin.ext = '*.bin'
pl_bin.width = 440
pl_bin.h_fill = True
#p_bin.colspan = 2

pl_tar = Par('file', '')
pl_tar.title = 'Tar File'
pl_tar.ext = '*.tar'
pl_tar.width = 440

al_tar = Act('tar_local()', 'Tar') 
al_tar.height = 48

g_loc.add(pl_hdf, pl_bin, pl_tar, al_tar)

def tar_local():
    hname = str(pl_hdf.value)
    bname = str(pl_bin.value)
    if not os.path.exists(hname):
        open_error('HDF file ' + hname + ' doesn\'t exist, quitting.')
        return
    if not os.path.exists(bname):
        open_error('BIN file ' + bname + ' doesn\'t exist, quitting.')
        return
    tname = str(pl_tar.value)
    if not tname.lower().endswith('.tar'):
        tname += '.tar'
    if os.path.exists(tname):
        if not confirm('File ' + tname + ' exists, overwrite?'):
            return
    tf = tarfile.open(tname, "w")
    tf.add(hname, os.path.basename(hname))
    tf.add(bname, os.path.basename(bname))
    tf.close()
    slog(tname + ' created')
    
    
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
