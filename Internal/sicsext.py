from gumpy.commons.sics import *
from gumpy.commons import sics
import os
import time
from org.gumtree.gumnix.sics.io import SicsCallbackAdapter
from org.gumtree.gumnix.sics.control import ServerStatus
from org.gumtree.gumnix.sics.batch.ui.util import SicsBatchUIUtils
import traceback
import sys

def runbmonscan(scan_variable, scan_start, scan_increment, NP, mode, preset, channel, comm = None):
    rawscan('bmonscan', scan_variable, scan_start, scan_increment, NP, mode, preset, channel, comm)

def runhmscan(scan_variable, scan_start, scan_increment, NP, mode, preset, channel, comm = None):
    rawscan('hmscan', scan_variable, scan_start, scan_increment, NP, mode, preset, channel, comm)

def runscan(scan_variable, scan_start, scan_stop, numpoints, mode, preset, comm = None, force = False, \
            datatype = 'HISTOGRAM_XYT', savetype = 'save'):
    # Initialisation
    clearInterrupt()
    cpath = '/commands/scan/runscan'
    sicsController = getSicsController()
    scanController = sicsController.findComponentController(cpath)
    
    execute('hset ' + cpath + '/scan_variable ' + str(scan_variable))
    execute('hset ' + cpath + '/scan_start ' + str(scan_start))
    execute('hset ' + cpath + '/scan_stop ' + str(scan_stop))
    execute('hset ' + cpath + '/numpoints ' + str(numpoints))
    execute('hset ' + cpath + '/mode ' + mode)
    execute('hset ' + cpath + '/preset ' + str(preset))
    execute('hset ' + cpath + '/datatype ' + datatype)
    execute('hset ' + cpath + '/savetype ' + savetype)
    execute('hset ' + cpath + '/force ' + str(force))

    # Monitor status
    while(scanController.getCommandStatus().equals(CommandStatus.BUSY)):
        # Don't do anything before scan is ready
        time.sleep(0.1)
    
    # Wait 1 sec to make the setting settle
    time.sleep(1)
    
    # Run scan
    print 'Scan started'
#    scanController.asyncExecute()
    execute('hset ' + cpath + ' start')
    
    # Monitor initial status change
    try:
        timeOut = False
        counter = 0;
        print 'Waiting for scan to start'
        while (scanController.getCommandStatus().equals(CommandStatus.IDLE)):
            time.sleep(0.1)
            counter += 0.1
            if (counter >= 50):
                timeOut = True
                print 'Time out on running scan'
                break
                
        # Enter into normal sequence
        print 'Scan started'
        if (timeOut == False):
            scanpoint = -1;
            scanPointController = sicsController.findComponentController(scanController, '/feedback/scanpoint')
            countsController = sicsController.findComponentController(scanController, '/feedback/scan_variable_value')
            print '  NP  ' + '\t' + ' Device Position'
            while (scanController.getCommandStatus().equals(CommandStatus.BUSY)):
                try:
                    currentPoint = scanPointController.getValue().getFloatData()
                except:
                    time.sleep(0.1)
                    continue
                if ((scanpoint == -1 and  currentPoint == 0) or (scanpoint != -1 and currentPoint != scanpoint)):
                    scanpoint = currentPoint
                    if currentPoint > 0 :
                        try:
                            print '%4d \t %.4f' % (scanpoint, countsController.getValue().getFloatData())
                        except:
                            pass
                        if not comm is None:
                            try:
#                            if (float(scanpoint) / 3) == (int(scanpoint) /3) :
                                comm()
#                                print '\tupdate plot'
                            except:
                                traceback.print_exc(file = sys.stdout)
                time.sleep(0.1)
            if comm != None:
                try:
                    comm()
                except:
                    pass
            try:
                print '%4d \t %.4f' % (scanpoint + 1, countsController.getValue().getFloatData())
            except:
                pass
            logger.log('Scan completed')
        handleInterrupt()
    except Exception, e:
        if e.message == 'SICS interrupted!':
            raise e
        else:
            traceback.print_exc(file = sys.stdout)
            raise Exception, 'failed to run the scan'
    except:
        traceback.print_exc(file = sys.stdout)
        raise Exception, 'failed to run the scan'

def rawscan(type, scan_variable, scan_start, scan_increment, NP, mode, preset, channel, comm):
    # Initialisation
    clearInterrupt()
#    scan_variable = 'dummy_motor'
    cpath = '/commands/scan/' + type
    sicsController = getSicsController()
    scanController = sicsController.findComponentController('/commands/scan/' + type)
    
    execute('hset ' + cpath + '/scan_variable ' + str(scan_variable))
    execute('hset ' + cpath + '/scan_start ' + str(scan_start))
    execute('hset ' + cpath + '/scan_increment ' + str(scan_increment))
    execute('hset ' + cpath + '/NP ' + str(NP))
    execute('hset ' + cpath + '/mode ' + mode)
    execute('hset ' + cpath + '/preset ' + str(preset))
    execute('hset ' + cpath + '/channel ' + str(channel))

    # Monitor status
    while(scanController.getCommandStatus().equals(CommandStatus.BUSY)):
        # Don't do anything before scan is ready
        time.sleep(0.1)
    
    # Wait 1 sec to make the setting settle
#    time.sleep(1)
    
    # Run scan
    print 'Scan started'
#    scanController.asyncExecute()
    execute('hset ' + cpath + ' start')
    
    # Monitor initial status change
    try:
        timeOut = False
        counter = 0;
        while (scanController.getCommandStatus().equals(CommandStatus.IDLE)):
            time.sleep(0.1)
            print 'IDLE'
            counter += 0.1
            if (counter >= 3):
                timeOut = True
                print 'Time out on running scan'
                break
                
        # Enter into normal sequence
        if (timeOut == False):
            scanpoint = -1;
            scanPointController = sicsController.findComponentController(scanController, '/feedback/scanpoint')
            countsController = sicsController.findComponentController(scanController, '/feedback/counts')
            print '  NP  ' + '\t' + ' Counts'
            while (scanController.getCommandStatus().equals(CommandStatus.BUSY)):
                try:
                    currentPoint = scanPointController.getValue().getIntData()
                except:
                    time.sleep(0.1)
                    continue
                if ((scanpoint == -1 and  currentPoint == 0) or (scanpoint != -1 and currentPoint != scanpoint)):
                    scanpoint = currentPoint
                    if currentPoint > 0 :
                        try:
                            print '%4d \t %d' % (scanpoint, countsController.getValue().getFloatData())
                        except:
                            pass
                        if comm != None:
                            try:
#                            if (float(scanpoint) / 3) == (int(scanpoint) /3) :
                                comm()
                                print '\tupdate plot'
                            except:
                                traceback.print_exc(file = sys.stdout)
                time.sleep(0.1)
            if comm != None:
                try:
                    comm()
                except:
                    pass
            try:
                print '%4d \t %d' % (scanpoint + 1, countsController.getValue().getFloatData())
            except:
                pass
            logger.log('Scan completed')
        handleInterrupt()
    except Exception, e:
        if e.message == 'SICS interrupted!':
            raise e
        else:
            traceback.print_exc(file = sys.stdout)
            raise Exception, 'failed to run the scan'
    except:
        traceback.print_exc(file = sys.stdout)
        raise Exception, 'failed to run the scan'
        
        
def getBaseFilename():
    return os.path.basename(str(getFilename()))

def getStableValue(dev):
    val = None
    while (True):
        controller = getDeviceController(dev)
        new_val = controller.getValue(True).getFloatData()
        if new_val == val :
            return getValue(dev)
        else:
            val = new_val
            time.sleep(1)
        
__status__ = None
class __SICS_Callback__(SicsCallbackAdapter):
    
    def receiveReply(self, data):
        global __status__
        try:
            rt = data.getString()
            if rt.__contains__('='):
                __status__ = data.getString().split("=")[1].strip()
            elif rt.__contains__(':'):
                __status__ = data.getString().split(":")[1].strip()
                if __status__.__contains__('}'):
                    __status__ = __status__[:__status__.index('}')]
            self.setCallbackCompleted(True)
        except:
            traceback.print_exc(file = sys.stdout)
            self.setCallbackCompleted(True)

def getDrivables():
    arr = SicsBatchUIUtils.getSicsDrivableIds()
    res = []
    for i in xrange(len(arr)):
        item = arr[i]
        if not item is None:
            res.append(item)
    return res
    
def runCommand(cmd):
    global __status__
    __status__ = None
    call_back = __SICS_Callback__()
    SicsCore.getDefaultProxy().send(cmd, call_back)
    acc_time = 0
    while __status__ is None and acc_time < 2:
        time.sleep(0.2)
        acc_time += 0.2
    if __status__ is None:
        raise Exception, 'time out in running the command'
    return __status__

def scan(device, start, stop, NP, mode, preset, force = False):
    runscan(device, start, stop, NP, mode, preset, None, force)
    
def drive_ms(id, value, controller_name = 'tc1'):
    entries = dict()
    if type(id) is list or type(id) is tuple:
        for i in xrange(len(id)):
            did = id[i]
            dname = controller_name + '_' + 'MEER{0:02d}'.format(did) + '_ObjectTemp_LOOP_0_TARGET'
            if type(value) is list or type(value) is tuple:
                dval = value[i]
            else:
                dval = value
            entries[dname] = dval
        print("multi_drive " + str(entries))
        sics.multiDrive(entries)
    else :
        did = controller_name + '_' + 'MEER{0:02d}'.format(id) + '_ObjectTemp_LOOP_0_TARGET'
        print("drive {} {}".format(did, value))
        sics.drive(did, value)

def drive_all_ms(value, controller_name = 'tc1'):
    entries = dict()
    if type(value) is list or type(value) is tuple:
        for i in xrange(len(value)):
            dname = controller_name + '_' + 'MEER{0:02d}'.format(i + 1) + '_ObjectTemp_LOOP_0_TARGET'
            dval = value[i]
            entries[dname] = dval
        print("multi_drive " + str(entries))
        sics.multiDrive(entries)
    else :
        tc = sics.getDeviceController('/sample/' + controller_name)
        if tc is None :
            raise Exception(controller_name + ' not found')
        num = len(tc.getChildControllers())
        for i in xrange(num):
            dname = controller_name + '_' + 'MEER{0:02d}'.format(i + 1) + '_ObjectTemp_LOOP_0_TARGET'
            entries[dname] = value
        print("multi_drive " + str(entries))
        sics.multi_drive(entries)

def run_ms(id, value, controller_name = 'tc1'):
    if type(id) is list or type(id) is tuple:
        for i in xrange(len(id)):
            did = id[i]
            dname = controller_name + '_' + 'MEER{0:02d}'.format(did) + '_ObjectTemp_LOOP_0_TARGET'
            if type(value) is list or type(value) is tuple:
                dval = value[i]
            else:
                dval = value
            print("run " + dname + ' ' + str(dval))
            sics.run(dname, dval)
    else :
        did = controller_name + '_' + 'MEER{0:02d}'.format(id) + '_ObjectTemp_LOOP_0_TARGET'
        print("run " + did + ' ' + str(value))
        sics.run(dname, value)

def run_all_ms(value, controller_name = 'tc1'):
    if type(value) is list or type(value) is tuple:
        for i in xrange(len(value)):
            dname = controller_name + '_' + 'MEER{0:02d}'.format(i + 1) + '_ObjectTemp_LOOP_0_TARGET'
            dval = value[i]
            print("run " + dname + ' ' + str(dval))
            sics.run(dname, dval)
    else :
        tc = sics.getDeviceController('/sample/' + controller_name)
        if tc is None :
            raise Exception(controller_name + ' not found')
        num = len(tc.getChildControllers())
        for i in xrange(num):
            dname = controller_name + '_' + 'MEER{0:02d}'.format(i + 1) + '_ObjectTemp_LOOP_0_TARGET'
            print("run " + dname + ' ' + str(value))
            sics.run(dname, value)
