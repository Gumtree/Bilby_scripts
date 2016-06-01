# Script control setup area
# script info
__script__.title = '2D Bilby Plot'
__script__.version = '1.18 convert time bin to TOF'


# Use below example to create parameters.
# The type can be string, int, float, bool, file.

directory = 'B:/temp/' 

# INFO ################################################

sep_line1 =  Par('label', '                  ---------------')
sep_line1.colspan = 4
empty = Par('label', '')
empty.colspan = 1

det_info7 = Par('label', 'Detector Height: 0 - 81')
det_info7.colspan = 1
det_info8 = Par('label', 'Detector Tubes: 0 - 239')
det_info8.colspan = 1
det_info1 = Par('label', 'curtain_l:   0-39')
det_info1.colspan = 1
det_info2 = Par('label', 'curtain_r: 40-79')
det_info2.colspan = 1
det_info3 = Par('label', 'curtain_u:   80-119')
det_info3.colspan = 1
det_info4 = Par('label', 'curtain_d: 120-159')
det_info4.colspan = 1
det_info5 = Par('label', 'rear_l: 160-199')
det_info5.colspan = 2
det_info6 = Par('label', 'rear_r: 200-239')
det_info6.colspan = 2


g0 = Group('General Info')
g0.numColumns = 2 #9
g0.add(det_info7,det_info8,
       sep_line1,
       det_info1,det_info3,det_info5,
       det_info2,det_info4,det_info6)


# INPUT ################################################################
# DETECTOR AREA FOR PLOT 1

frame_number = Par('int', 0, command = 'frame_number_changed()')
frame_number.title = 'Frame Number: '
frame_number.colspan = 2
def frame_number_changed():
    print 'Frame Number ' + str(timebin_start.value)
frame_number_FromFile = Par('string', 'NaN')
frame_number_FromFile.title = 'of'
frame_number_FromFile.enabled = False

timebin_start = Par('int', 0, command = 'timebin_start_changed()')
timebin_start.title = 'Time bin from '
def timebin_start_changed():
    print 'Time bin from ' + str(timebin_start.value)
timebin_end = Par('int', 299, command = 'timebin_end_changed()')
timebin_end.title = 'to '
def timebin_end_changed():
    print 'Time bin to ' + str(timebin_end.value)
timebins_FromFile = Par('string', 'NaN')
timebins_FromFile.title = 'of'
timebins_FromFile.enabled = False


# -------------------------------------------------------

det_plotting = Par('label','Detector area for 2D plot:')
det_plotting.colspan = 6


detheight_start = Par('int', 0, command = 'detheight_start_changed()')
detheight_start.title = 'Detector tube height from '
def detheight_start_changed():
    print 'Detector tube height from ' + str(detheight_start.value)
detheight_end = Par('int', 81, command = 'detheight_end_changed()')
detheight_end.title = 'to '
def detheight_end_changed():
    print 'Detector tube height to ' + str(detheight_end.value)
detheight_FromFile = Par('string', 'NaN')
detheight_FromFile.title = 'of'
detheight_FromFile.enabled = False

dettube_start = Par('int', 0, command = 'dettube_start_changed()')
dettube_start.title = 'Detector tube number from '
def dettube_start_changed():
    print 'Detector tube number from ' + str(dettube_start.value)
dettube_end = Par('int', 239, command = 'dettube_end_changed()')
dettube_end.title = 'to '
def dettube_end_changed():
    print 'Detector tube number to ' + str(dettube_end.value)    
dettube_FromFile = Par('string', 'NaN')
dettube_FromFile.title = 'of'
dettube_FromFile.enabled = False

# -------------------------------------------------------

Rotate_leftright = Par('bool', False, command = 'Rotate_leftright_changed()')
Rotate_leftright.title = 'Rotate Detector. l+r: '
Rotate_leftright.colspan = 1
def Rotate_leftright_changed():
    if Rotate_leftright.value:
        print        
        print 'Rotate Left and Right Curtain'        
Rotate_topbottom = Par('bool', False, command = 'Rotate_topbottom_changed()')
Rotate_topbottom.title = 't+b'
Rotate_topbottom.colspan = 1
def Rotate_topbottom_changed():
    if Rotate_topbottom.value:
        print        
        print 'Rotate Top and Bottom Curtain'       
Rotate_rear = Par('bool', False, command = 'Rotate_rear_changed()')
Rotate_rear.title = 'rear'
Rotate_rear.colspan = 1
def Rotate_rear_changed():
    if Rotate_topbottom.value:
        print        
        print 'Rotate Rear Detector'
        

# DETECTOR AREA TO INTEGRATE PROFILES

det_calculateprofile = Par('label','Detector area to calculate profile (red marker in 2D plot):')
det_calculateprofile.colspan = 6

detheight_int_start = Par('int', 0, command = 'detheight_int_start_changed()')
detheight_int_start.title = 'Detector tube height from '
def detheight_int_start_changed():
    print 'Detector tube height from ' + str(detheight_int_start.value)
detheight_int_end = Par('int', 81, command = 'detheight_int_end_changed()')
detheight_int_end.title = 'to '
def detheight_int_end_changed():
    print 'Detector tube height to ' + str(detheight_int_end.value)

dettube_int_start = Par('int', 0, command = 'dettube_int_start_changed()')
dettube_int_start.title = 'Detector tube number from '
def dettube_int_start_changed():
    print 'Detector tube number from ' + str(dettube_int_start.value)
dettube_int_end = Par('int', 239, command = 'dettube_int_end_changed()')
dettube_int_end.title = 'to '
def dettube_int_end_changed():
    print 'Detector tube number to ' + str(dettube_int_end.value)


integration_mode = Par('string', 'Tube Height', options = ['Tube Height', 'Tube Number'])
integration_mode.title = 'Profile along '   

##        TOF OPTIONS

TOF_options = Par('label', 'TOF options:')
TOF_options.colspan = 6

TOF_x = Par('string', 'Original Time Bin', options = ['Original Time Bin', 'Original Time','Original Time From File', 'Time from correct t0','Wavelength for rear det', 'Wavelength for u+d det','Wavelength for l+r det'])
TOF_x.title = 'x-axis '  
TOF_y = Par('string', 'Counts', options = ['Counts', 'Normalised to 1', 'Normalised by Bin Time'])
TOF_y.title = 'y-axis '





g1 = Group('Choose Time Bin and Detector Area                           [Plot 1,2]')
g1.numColumns = 3 #9
g1.add(
       frame_number,frame_number_FromFile,
       timebin_start, timebin_end, timebins_FromFile,
       sep_line1,
       det_plotting,
       detheight_start, detheight_end,detheight_FromFile,
       dettube_start, dettube_end,dettube_FromFile,
       Rotate_leftright,
       Rotate_topbottom,
       Rotate_rear,
       sep_line1,
       det_calculateprofile,
       detheight_int_start, detheight_int_end,detheight_FromFile,
       dettube_int_start, dettube_int_end,dettube_FromFile,
       integration_mode,empty,
       sep_line1,
       TOF_options,
       TOF_x,TOF_y)


# -------------- EXPORT
 
export_2D = Par('bool', False)
export_2D.title = 'Export 2D image'

export_TOF = Par('bool', False)
export_TOF.title = 'Export TOF'

export_PRO = Par('bool', False)
export_PRO.title = 'Export Profile'

export_PRO_TimeInc = Par('bool', False)
export_PRO_TimeInc.title = 'Time Binned Profiles '

incr_timebins = Par('int', 10, command = 'incr_timebins_changed()')
incr_timebins.title = ' in increment of  '

def incr_timebins_changed():
    print 'Automatically bin and export TOF spectra every ' + str(incr_timebins.value) + ' frames'
    
g4 = Group('Export Options')
g4.numColumns = 3 #9
g4.add(export_2D,
       export_TOF,
       export_PRO,
       export_PRO_TimeInc,incr_timebins, empty,empty)


master1_chopperid_FromFile = Par('string', 'NaN')
master1_chopperid_FromFile.title = 'master1'
master1_chopperid_FromFile.enabled = False

master2_chopperid_FromFile = Par('string', 'NaN')
master2_chopperid_FromFile.title = 'master2'
master2_chopperid_FromFile.enabled = False

t0_chopperid_FromFile = Par('string', 'NaN')
t0_chopperid_FromFile.title = 't0-chopper'
t0_chopperid_FromFile.enabled = False

master_chopperfreq_FromFile = Par('string', 'NaN')
master_chopperfreq_FromFile.title = 'master freq [Hz]'
master_chopperfreq_FromFile.enabled = False

t0_chopperfreq_FromFile = Par('string', 'NaN')
t0_chopperfreq_FromFile.title = 't0-chopper freq [Hz]'
t0_chopperfreq_FromFile.enabled = False

t0_chopperphase_FromFile = Par('string', 'NaN')
t0_chopperphase_FromFile.title = 't0-chopper phase [deg]'
t0_chopperphase_FromFile.enabled = False

Ltof_det_FromFile = Par('string', 'NaN')
Ltof_det_FromFile.title = 'Ltof_det [mm]'
Ltof_det_FromFile.enabled = False

Ltof_curtainr_FromFile = Par('string', 'NaN')
Ltof_curtainr_FromFile.title = 'Ltof_l/r [mm]'
Ltof_curtainr_FromFile.enabled = False

Ltof_curtainu_FromFile = Par('string', 'NaN')
Ltof_curtainu_FromFile.title = 'Ltof_u/d [mm]'
Ltof_curtainu_FromFile.enabled = False

g5 = Group('INFO')
g5.numColumns = 3 #9
g5.add(master1_chopperid_FromFile,master_chopperfreq_FromFile,Ltof_det_FromFile,
       master2_chopperid_FromFile,t0_chopperfreq_FromFile,Ltof_curtainu_FromFile,
       t0_chopperid_FromFile,t0_chopperphase_FromFile,Ltof_curtainr_FromFile,      
       empty)


#############################################################################
# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    # Use the provided resources, please don't remove.
    global Plot1
    global Plot2
    global Plot3
    
    Plot1.clear()
    Plot2.clear()
    Plot3.clear()
    
    # check if a list of file names has been given
    
    if (fns is None or len(fns) == 0) :
        print 'no input datasets'
    else :
        for fn in fns:
            # load dataset with each file name            df.datasets.clear()
            ds = df[fn]

            filename = os.path.basename(fn) # gets rid of the path
            filename = filename[:filename.find('.nx.hdf')] # gets rid of the hdf
            filename = filename.replace('0000','')
            
            frame_number_FromFile.value  = ds.shape[0]
            timebins_FromFile.value  = ds.shape[1]
            detheight_FromFile.value  = ds.shape[2]
            dettube_FromFile.value  = ds.shape[3]
            
            
            #det = ds[0] # to get rid of first nonsense number -> takes first element in list(list(list(list))))
            
            if frame_number.value > (ds.shape[0]-1):
                print 'Only ',ds.shape[0], ' frames available, using frame [0]' 
                det = ds[0]
            else:
                print ' '
                print 'Frame: ',frame_number.value 
                det = ds[frame_number.value]
                
            det.axes[0] = range(det.shape[0]) # so that all axes are integers
            det.axes[1] = range(det.shape[1]) 
            det.axes[2] = range(det.shape[2])

            
            #ds.__iDictionary__.addEntry('time_of_flight', 'entry1/data/time_of_flight')
            #Master1_FromFile.value  = TryGet(ds, ['entry1/data/time_of_flight'             ])
            #Master1_FromFile.value  = TryGet(ds, ['entry1/instrument/master1_chopper_id'             ])
            ds.__iDictionary__.addEntry('master1_chopper_id', 'entry1/instrument/master1_chopper_id')
            ds.__iDictionary__.addEntry('master2_chopper_id', 'entry1/instrument/master2_chopper_id')
            ds.__iDictionary__.addEntry('t0_chopper_id', 'entry1/instrument/t0_chopper_id')
            ds.__iDictionary__.addEntry('master_chopper_freq', 'entry1/instrument/master_chopper_freq')
            ds.__iDictionary__.addEntry('t0_chopper_freq', 'entry1/instrument/t0_chopper_freq')
            ds.__iDictionary__.addEntry('t0_chopper_phase', 'entry1/instrument/t0_chopper_phase')
            ds.__iDictionary__.addEntry('Ltof_det', 'entry1/instrument/Ltof_det')
            ds.__iDictionary__.addEntry('Ltof_curtainr', 'entry1/instrument/Ltof_curtainr')
            ds.__iDictionary__.addEntry('Ltof_curtainu', 'entry1/instrument/Ltof_curtainu')
            ds.__iDictionary__.addEntry('samplename', 'entry1/sample/name')
            ds.__iDictionary__.addEntry('timeDet', 'entry1/instrument/detector/time')

            print 'sample name: ' + str(ds.samplename)
            print 'measurement time: ' + str(ds.timeDet) +  ' [s]'
            master1_chopperid_FromFile.value = str(ds.master1_chopper_id)
            master2_chopperid_FromFile.value = str(ds.master2_chopper_id) 

            t0_chopperid_FromFile.value = str(ds.t0_chopper_id)
            if ds.master_chopper_freq < 1:
                ds.master_chopper_freq = 0.1 # to allow for using the velocity selector
            if ds.t0_chopper_freq < 1:
                ds.t0_chopper_freq = 0.1 # to allow for using the velocity selector
            if ds.t0_chopper_phase > 360:
                ds.t0_chopper_phase = 0       
            master_chopperfreq_FromFile.value = str(ds.master_chopper_freq)
            t0_chopperphase_FromFile.value = str(ds.t0_chopper_phase)
            t0_chopperfreq_FromFile.value = str(ds.t0_chopper_freq)
            Ltof_det_FromFile.value = str(ds.Ltof_det)
            Ltof_curtainr_FromFile.value = str(ds.Ltof_curtainr)
            Ltof_curtainu_FromFile.value = str(ds.Ltof_curtainu)
            master1_chopperphase = 0            
            master2_chopperphase = -120
            
            
            # ROTATE THE DETECTOR: blanked because cannot cope with 1000 bins

           #====================================================================
            a = copy(det)
           # a = det[:]
           # 
           # 
           #             
           # if Rotate_leftright.value:               
           #     
           #     b = copy(a)
           #     
           #     b[:,:,40:80]= a[:,:,0:40]                
           #     for i in range(40):
           #         b [:,:,i] = a[:,:,79-i]                    
           #     a = copy (b)    
           #     for i in range(82):
           #         b [:,i,0:80] = a [:,81-i,0:80]
           #     
           #     a = copy (b)
           #                   
           # if Rotate_topbottom.value:               
           #     
           #     b = copy(a)
           #     
           #     b[:,:,120:160]= a[:,:,80:120]                
           #     for i in range(40):
           #         b [:,:,80+i] = a[:,:,159-i]                    
           #     a = copy (b)    
           #     for i in range(82):
           #         b [:,i,80:120] = a [:,81-i,80:120]
           #     
           #     a = copy (b)
           #     
            if Rotate_rear.value: 
                
                b = copy(a)
           #     
                b[:,:,200:240]= a[:,:,160:200]                
                for i in range(40):
                    b [:,:,160+i] = a[:,:,239-i]                    
                a = copy (b)    
                for i in range(82):
                    b [:,i,160:200] = a [:,81-i,160:200]
           #     
                a = copy (b)
           #  
                det = copy(a)
#              t = a[:]
           #====================================================================
                          
            det_roi = det[:,
                       detheight_start.value:detheight_end.value+1,
                       dettube_start.value:dettube_end.value+1]# limit detector to ROI
           
            det_roi_tof_1D = det_roi[:, :, :].sum(0) # sum to one axis (axis [0] = time of flight)
            
            det_roi_totcounts = sum(det_roi_tof_1D)
            print
            print 'Total counts on 2D image: ',det_roi_totcounts
            print
            
            det_roi_tof_1D.axes.title = 'original time bin'
            det_roi_tof_1D.title = 'intensity'
            
            #x-axis
            total_time = 1/float(t0_chopperfreq_FromFile.value)            
            number_of_bins = float(len(det_roi_tof_1D.axes[0]))
            timebin_time = total_time/number_of_bins
            det_original_time = []
            det_t0_time = []
            number_of_bins = float(len(det_roi_tof_1D.axes[0]))
            
            
            # t0 correction
            # at which times are the choppers at 0 degrees
 
            master1_time_0deg = -master1_chopperphase/360.*1/float(master_chopperfreq_FromFile.value)
            master2_time_0deg = -master2_chopperphase/360.*1/float(master_chopperfreq_FromFile.value)
            t0chopp_time_0deg = -float(t0_chopperphase_FromFile.value)/360.*1/float(t0_chopperfreq_FromFile.value)
            
            offset_time = (master1_time_0deg + master2_time_0deg)/2 - t0chopp_time_0deg

            for i in range (number_of_bins):
                det_original_time.append(i*total_time/number_of_bins)
                det_t0_time.append(det_original_time[i] - offset_time) # DOUBLE CHECK MIGHT BE PLUS OR MINUS
                
       
           
            if str(TOF_x.value) == 'Original Time From File':
                det_roi_tof_1D.axes[0] = ds.axes[1]
                det_roi_tof_1D.axes.title = 'original time in usec'
                
            if str(TOF_x.value) == 'Original Time':
                det_roi_tof_1D.axes[0] = det_original_time
                det_roi_tof_1D.axes.title = 'original time in sec'
            
            if str(TOF_x.value) == 'Time from correct t0':
                det_roi_tof_1D.axes[0] = det_t0_time
                det_roi_tof_1D.axes.title = 'time with correct t0 in sec'
                
            if str(TOF_x.value) == 'Wavelength for rear det':
                # calculate wavelength with respect to rear detector
                h = 6.63E-34 #[Js]
                m_neutron = 1.67E-27 #[kg] 
            
                vel = []
                wavelength = []
                for i in range (number_of_bins):
                   if det_t0_time[i] == 0:
                      det_t0_time[i] = 1e-10
                   vel.append(float(Ltof_det_FromFile.value)/1000/det_t0_time[i]) #[m/s]
                   wavelength.append(h/m_neutron*1/vel[i]*1e10) #[Ang]
                det_roi_tof_1D.axes[0] = wavelength
                det_roi_tof_1D.axes.title = 'wavelength rear detector'
                
            if str(TOF_x.value) == 'Wavelength for u+d det':
                # calculate wavelength with respect to u+d curtain detector
                h = 6.63E-34 #[Js]
                m_neutron = 1.67E-27 #[kg] 
            
                vel = []
                wavelength = []
                for i in range (number_of_bins):
                   if det_t0_time[i] == 0:
                      det_t0_time[i] = 1e-10
                   vel.append(float(Ltof_curtainu_FromFile.value)/1000/det_t0_time[i]) #[m/s]
                   wavelength.append(h/m_neutron*1/vel[i]*1e10) #[Ang]
                det_roi_tof_1D.axes[0] = wavelength
                det_roi_tof_1D.axes.title = 'wavelength u+d curtain'
                
            if str(TOF_x.value) == 'Wavelength for l+r det':
                # calculate wavelength with respect to rear detector
                h = 6.63E-34 #[Js]
                m_neutron = 1.67E-27 #[kg] 
            
                vel = []
                wavelength = []
                for i in range (number_of_bins):
                   if det_t0_time[i] == 0:
                      det_t0_time[i] = 1e-10
                   vel.append(float(Ltof_curtainr_FromFile.value)/1000/det_t0_time[i]) #[m/s]
                   wavelength.append(h/m_neutron*1/vel[i]*1e10) #[Ang]
                det_roi_tof_1D.axes[0] = wavelength
                det_roi_tof_1D.axes.title = 'wavelength l+r detector'
            
            
            # y - axis
            
            tof_max = max(det_roi_tof_1D)
            
            if str(TOF_y.value) == 'Normalised to 1':
                det_roi_tof_1D[:] = det_roi_tof_1D[:]/tof_max
                det_roi_tof_1D.title = 'intensity normalised to 1'
            
            if str(TOF_y.value) == 'Normalised by Bin Time':
                det_roi_tof_1D[:] = det_roi_tof_1D[:]/timebin_time
                det_roi_tof_1D.title = 'intensity normalised to bin time'

            
            Plot2.set_dataset(det_roi_tof_1D)
            #Plot2.add_x_marker(timebin_start.value, 50, 'red')
            #Plot2.add_x_marker(timebin_end.value, 50, 'red')
            Plot2.add_x_marker(det_roi_tof_1D.axes[0][timebin_start.value], 50, 'red')
            Plot2.add_x_marker(det_roi_tof_1D.axes[0][timebin_end.value], 50, 'red')
            
            
            
            Plot2.title = 'TOF spectrum of detector image above'
            Plot2.x_label = str(det_roi_tof_1D.axes.title) #'time bin'
            
            if export_TOF.value:
                export_ascii_1D(det_roi_tof_1D, directory + 'TOF_' + filename +
                         '_HOR_'+ str(dettube_start.value) + 'to' + str(dettube_end.value) +
                         '_VER_'+ str(detheight_start.value) + 'to' + str(detheight_end.value)+ '.txt')                       
                print ''
                print 'TOF of the detector image is exported'
               
            det_roi_time = det_roi[timebin_start.value:timebin_end.value+1]
            det_roi_timebin = det_roi_time.intg(0)
            det_roi_timebin.axes[0].title = 'tube_height'
            det_roi_timebin.axes[1].title = 'tube_number'
            Plot1.set_dataset(det_roi_timebin)
            Plot1.title = filename + ': Detector image from time bin ' + str(timebin_start.value) + ' to ' + str(timebin_end.value)
            
            if export_2D.value:
               export_ascii_2D(det_roi_timebin, directory + '2D_' + filename +
                         '_TIME_'+ str(timebin_start.value) + 'to' + str(timebin_end.value) +
                         '_HOR_'+ str(dettube_start.value) + 'to' + str(dettube_end.value) +
                         '_VER_'+ str(detheight_start.value) + 'to' + str(detheight_end.value)+ '.txt')
               print ''    
               print 'Detector image is exported'
            
            # integrate profile        
            det_roi_profile = det[:,
                       detheight_int_start.value:detheight_int_end.value+1,
                       dettube_int_start.value:dettube_int_end.value+1]
            det_roi_profile_timebin = det_roi_profile[timebin_start.value:timebin_end.value+1,:,:]
            
            Plot1.add_x_marker(dettube_int_start.value, 50, 'red')
            Plot1.add_x_marker(dettube_int_end.value, 50, 'red')
            Plot1.add_y_marker(detheight_int_start.value, 50, 'red')
            Plot1.add_y_marker(detheight_int_end.value, 50, 'red')

                
            if str(integration_mode.value) == 'Tube Height':                                
                det_roi_profile_1D = det_roi_profile_timebin[:, :, :].sum(1)             
                det_roi_profile_1D.axes.title = 'tube_height'
                det_roi_profile_1D.title = 'intensity'
                
                Plot3.set_dataset(det_roi_profile_1D)
                Plot3.title = 'PROFILE. Tube Number: ' + str(dettube_int_start.value) + 'to' + str(dettube_int_end.value) + '. Time Bin:'+ str(timebin_start.value)+ 'to' + str(timebin_end.value)                              
                Plot3.x_label = str(det_roi_profile_1D.axes.title) #'tube height' # WHY IS THAT NECESSARY?                          
                
            if str(integration_mode.value) == 'Tube Number':                
                det_roi_profile_1D = det_roi_profile_timebin[:, :, :].sum(2)
                det_roi_profile_1D.axes.title = 'tube_number'
                det_roi_profile_1D.title = 'intensity'
                
                Plot3.set_dataset(det_roi_profile_1D)
                Plot3.title = 'PROFILE. Tube Height: ' + str(detheight_int_start.value) + 'to' + str(detheight_int_end.value) + '. Time Bin:'+ str(timebin_start.value)+ 'to' + str(timebin_end.value)                  
                Plot3.x_label = str(det_roi_profile_1D.axes.title) # 'tube number'# WHY IS THAT NECESSARY?                
            
            if export_PRO.value: 
               export_ascii_1D(det_roi_profile_1D, directory + 'PRO_' + filename +
                '_TIME_'+ str(timebin_start.value) + 'to' + str(timebin_end.value) +
                '_HOR_'+ str(dettube_int_start.value) + 'to' + str(dettube_int_end.value) +
                '_VER_'+ str(detheight_int_start.value) + 'to' + str(detheight_int_end.value)+ '.txt')          
               print ''
               print 'Detector profile is exported'    
 
            # automatic export                                 
            if export_PRO_TimeInc.value:                                                         
                    number_of_bins = det_roi_profile.shape[0] // incr_timebins.value              
                    det_roi_profile_onebin = zeros([det_roi_profile.shape[1]])
                   
                    title = range(number_of_bins) # why do we need this? axes title doesn't seem to always work?!?
                    det_roi_profile_allbins = zeros([number_of_bins,det_roi_profile.shape[1]])
                    if str(integration_mode.value) == 'Tube Height':
                        det_roi_profile_allbins = zeros([number_of_bins,det_roi_profile.shape[1]])
                    if str(integration_mode.value) == 'Tube Number':
                        det_roi_profile_allbins = zeros([number_of_bins,det_roi_profile.shape[2]])    
                    
                    
                    
                    for i in range(number_of_bins):                       
                        istart = i*incr_timebins.value
                        iend = istart + incr_timebins.value
                        if str(integration_mode.value) == 'Tube Height':
                           det_roi_profile_onebin = det_roi_profile[istart:iend,:,:].sum(1)                        
                           det_roi_profile_allbins[i] = det_roi_profile_onebin
                           title [i] = 'fr_' + str(istart) + '_' + str(iend-1)
                           det_roi_profile_allbins.axes[1].title = 'detheight'
                        
                        
                        if str(integration_mode.value) == 'Tube Number':
                           det_roi_profile_onebin = det_roi_profile[istart:iend,:,:].sum(2)                        
                           det_roi_profile_allbins[i] = det_roi_profile_onebin
                           title [i] = 'fr_' + str(istart) + '_' + str(iend-1)
                           det_roi_profile_allbins.axes[1].title = 'detnumber'
                    
                    
            
                    
                    export_ascii_1D_all_timebins(det_roi_profile_allbins, directory + 'PRO_' + filename +
                         '_ALLTIMEBINS_'+ str(number_of_bins) +
                         '_HOR_'+ str(dettube_int_start.value) + 'to' + str(dettube_int_end.value) +
                         '_VER_'+ str(detheight_int_start.value) + 'to' + str(detheight_int_end.value)+ '.txt',
                         title)
                    
                    print ''
                    print 'Detector profile is exported in timebin increments of ' + str(incr_timebins.value)
                    print '-------------'

'''
def TryGet(ds, pathList, default, forceDefault=False):
    if forceDefault:
        return default
    
    for path in pathList:
        try:
            return ds[path]
        except AttributeError:
            pass
        
    return default
'''
                    
def export_ascii_1D_all_timebins(ds, path, title):
        
    f = open(path, 'w')
    f.write ('%5s' % str(ds.axes[1].title)) 
    
    for i in range(ds.shape[0]):
            f.write('%12s' % str(title[i]))
    f.write('\n')
    for i in range(ds.shape[1]): # 82 detector height -> 82 lines
            f.write('%5g' % ds.axes[1][i])            
            for j in range(ds.shape[0]):
                f.write('%12g ' % ds[j][i])                
            f.write('\n')          
    f.close()

   
def export_ascii_1D(ds, path):
    f = open(path, 'w')    
    x = str(ds.axes[0].title)
    y = str(ds.title)       
    f.write("%s    %s" % (x, y) + '\n')
    for i in xrange(len(ds)):
       f.write("%5g %15g" % (ds.axes[0][i], ds.storage[i]) + '\n')            
    f.close()   
                    
def export_ascii_2D(ds, path, delimiter = ','):
    if ds.ndim != 2:
        raise Exception, 'wrong dimension, should be 2 instead of ' + str(ds.ndim)
    f = open(path, 'w')
    try:
        for i in xrange(len(ds)) : # note that this also gets rid of the brackets
            it = ds[i].item_iter()
            while it.has_next():
                f.write(str(it.next()) + delimiter)
            f.write('\n')
    finally:
        if f != None:
            f.close()                

    
def __dispose__():
    global Plot1
    global Plot2
    global Plot3
    Plot1.clear()
    Plot2.clear()
    Plot3.clear()
