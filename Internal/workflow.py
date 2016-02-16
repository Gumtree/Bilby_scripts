from gumpy.commons.logger import log
import pickle
# Script control setup area
# script info
__script__.title = 'Bilby Workflow'
__script__.version = '1.0'

# Use below example to create parameters.
# The type can be string, int, float, bool, file.

# Use below example to create a button
__number_of_sample__ = 10
__default_transmission_time__ = 60
__default_scattering_time__ = 120

__script__.numColumns = 2

workflow_list = []
__workflow_id__ = 0
__report_folder__ = 'W:/data/current/reports/pWorkflow'

class WorkflowBlock():
    def __init__(self):
        global __workflow_id__
        self.wid = __workflow_id__
        __workflow_id__ += 1
#        self.config = config
#        self.samples = samples
        tt = 'Workflow Block #' + str(self.wid)
        gc = Group(tt)
        gc.colspan = 2
        gc.numColumns = 2
        cenabled = Par('bool', True, command \
                       = 'set_enabled(' + str(self.wid) + ')')
        cenabled.title = 'enable/disable'
        cenabled.colspan = 2
        cremove = Act('remove_block(' + str(self.wid) + ')', 'Remove This Block')
#        cremove = Act('run1()', 'Remove This Block')
        cremove.name = 'cremove_' + str(self.wid)
        cremove.colspan = 2
        globals()[str(cremove.name)] = cremove
        ctitle = Par('string', tt, command \
                     = 'update_title(' + str(self.wid) + ')')
        ctitle.title = 'title'
        ctitle.colspan = 2
        ctext = Par('string', '')
        ctext.height = 80
        ctext.colspan = 2
        ctext.title = 'configuration'
        gc.add(cenabled, ctitle, cremove, ctext)
        #gs = Group('samples')
        gt = SampleTable(self.wid)
        gc.add(gt.group)
        cnew = Act('insert_block(' + str(self.wid) + ')', 'Add New Block Below')
        cnew.name = 'cnew_' + str(self.wid)
        cnew.colspan = 2
        cnew.independent = True
        globals()[str(cnew.name)] = cnew
        gc.add(cnew)
        self.group = gc
        self.enabled = cenabled
        self.remove = cremove
        self.title = ctitle
        self.config = ctext
        self.table = gt
        self.new_block = cnew
        
    def update_title(self):
        self.group.name = str(self.title.value)
        self.group.title = str(self.title.value)
        
    def set_enabled(self):
        flag = self.enabled.value
#        self.remove.enable = flag
        self.title.enabled = flag
        self.config.enabled = flag
        self.table.set_enabled(flag)
        
    def is_enabled(self):
        return self.enabled.value
    
    def __copy__(self):
        pass
        
    def dispose(self):
        self.enabled.dispose()
        self.remove.dispose()
        self.title.dispose()
        self.config.dispose()
        self.table.dispose()
        self.group.dispose()
        self.new_block.dispose()
        
    def run(self):
        tt = self.title.value
        if tt is None or len(tt.strip()) == 0:
            tt = self.group.name
        slog('start block: ' + str(tt))
        if self.need_to_run() :
            self.remove.enabled = False
            self.config.enabled = False
#            self.new_block.enabled = False
            try:
                slog('running configuration setup')
                exec(str(self.config.value))
                self.table.run()
                slog('block finished: ' + str(tt))
            finally:
                self.remove.enabled = True
                self.config.enabled = True
#                self.new_block.enabled = True
        else:
            slog('block: ' + str(self.title.value) + ' skipped')
        
    def to_rep(self):
        rep = dict()
        rep['title'] = self.title.value
        rep['config'] = self.config.value
        rep['trans_setup'] = self.table.trans_setup.value
        rep['scatt_setup'] = self.table.scatt_setup.value
        rep['trans_time'] = self.table.trans_time.value
        rep['scatt_time'] = self.table.scatt_time.value
        rep['trans_enabled'] = self.table.t3.value
        rep['scatt_enabled'] = self.table.t5.value
        for id in self.table.samples:
            sp = self.table.samples[id]
            rep['name_' + str(id)] = sp.name_text.value
            rep['trans_enabled_' + str(id)] = sp.do_trans.value
            rep['trans_time_' + str(id)] = sp.trans_time.value
            rep['scatt_enabled_' + str(id)] = sp.do_scatt.value
            rep['scatt_time_' + str(id)] = sp.scatt_time.value
        return rep
    
    def from_rep(self, rep):
        self.title.value = rep['title']
        self.group.name = self.title.value
        self.config.value = rep['config'] 
        self.table.trans_setup.value = rep['trans_setup'] 
        self.table.scatt_setup.value = rep['scatt_setup'] 
        self.table.trans_time.value = rep['trans_time'] 
        self.table.scatt_time.value = rep['scatt_time'] 
        self.table.t3.value = rep['trans_enabled'] 
        self.table.t5.value = rep['scatt_enabled'] 
        for id in self.table.samples:
            sp = self.table.samples[id]
            sp.name_text.value = rep['name_' + str(id)] 
            sp.do_trans.value = rep['trans_enabled_' + str(id)] 
            sp.trans_time.value = rep['trans_time_' + str(id)] 
            sp.do_scatt.value = rep['scatt_enabled_' + str(id)] 
            sp.scatt_time.value = rep['scatt_time_' + str(id)]
    
    def need_to_run(self):
#        for i in self.table.samples:
#            if self.table.samples[i].need_to_run():
#                return True
        return self.table.need_to_run()
    
    def reset_result(self):
        for i in self.table.samples:
            self.table.samples[i].reset_trans_result()
            self.table.samples[i].reset_scatt_result()
        
class Sample():
    def __init__(self, idx):
        global __default_scattering_time__
        self.idx = idx
        s1_idx = Par('label', str(idx))
        s1_idx.width = 24
        s1_name = Par('string', '')
        s1_name.title = ''
        s1_trans = Par('bool', True)
        s1_trans.title = ''
        s1_trans_time = Par('float', __default_transmission_time__)
        s1_trans_time.title = ''
        s1_trans_time.width = 20
        s1_trans_res = Par('label', ' ' * 17)
        s1_trans_res.width = 100
        s1_scatt = Par('bool', True)
        s1_scatt.title = ''
        s1_scatt_time = Par('float', __default_scattering_time__)
        s1_scatt_time.title = ''
        s1_scatt_time.width = 20
        s1_scatt_res = Par('label', ' ' * 17)
        s1_scatt_res.width = 100
        self.id_label = s1_idx
        self.name_text = s1_name
        self.do_trans = s1_trans
        self.trans_time = s1_trans_time
        self.trans_res = s1_trans_res
        self.do_scatt = s1_scatt
        self.scatt_time = s1_scatt_time
        self.scatt_res = s1_scatt_res
        
    def dispose(self):
        self.id_label.dispose()
        self.name_text.dispose()
        self.do_trans.dispose()
        self.trans_time.dispose()
        self.trans_res.dispose()
        self.do_scatt.dispose()
        self.scatt_time.dispose()
        self.scatt_res.dispose()
        
    def run_transmission(self):
        if self.do_trans.value and len(self.trans_res.value.strip()) == 0:
            slog('start transmission collect for sample number ' + str(self.idx))
            scan10(self.idx, self.trans_time.value, self.name_text.value)
            self.trans_res.value = get_base_filename()
        
    def run_scattering(self):
        if self.do_scatt.value and len(self.scatt_res.value.strip()) == 0:
            slog('start scattering collect for sample number ' + str(self.idx))
            scan10(self.idx, self.scatt_time.value, self.name_text.value)
            self.scatt_res.value = get_base_filename()
            
    def set_enabled(self, flag):
        self.id_label.enabled = flag
        self.name_text.enabled = flag
        self.do_trans.enabled = flag
        self.trans_time.enabled = flag
        self.trans_res.enabled = flag
        self.do_scatt.enabled = flag
        self.scatt_time.enabled = flag
        self.scatt_res.enabled = flag
        
    def need_to_run(self):
        return self.need_to_run_trans() or self.need_to_run_scatt()
    
    def reset_trans_result(self):
        self.trans_res.value = ''
        
    def reset_scatt_result(self):
        self.scatt_res.value = ''
        
    def need_to_run_trans(self):
        return self.do_trans.value and len(self.trans_res.value.strip()) == 0

    def need_to_run_scatt(self):
        return self.do_scatt.value and len(self.scatt_res.value.strip()) == 0
        
class SampleTable():
    def __init__(self, wid, name = 'Samples'):
        self.wid = wid
        self.samples = dict()
        self.group = Group(name)
        self.group.hideTitle = True
        self.group.numColumns = 8
        self.group.colspan = 2
        trans_setup = Par('string', '')
        trans_setup.title = 'transmission setup'
        trans_setup.colspan = 4
        trans_setup.height = 40
        scatt_setup = Par('string', '')
        scatt_setup.title = 'scattering setup'
        scatt_setup.colspan = 3
        scatt_setup.height = 40
        space1 = Par('space')
        trans_time = Par('float', '60', command='change_trans_time(' \
                         + str(wid) + ')')
        trans_time.title = 'transmission time'
        trans_time.colspan = 4
        scatt_time = Par('float', '120', command='change_scatt_time(' \
                         + str(wid) + ')')
        scatt_time.title = 'scattering time'
        scatt_time.colspan = 3
        space2 = Par('space')
         
        tit_1 = Par('label', 'idx')
        tit_1.width = 24
        tit_2 = Par('label', 'Sample Name')
        tit_3 = Par('bool', True, command='toggle_trans_enabled(' \
                         + str(wid) + ')')
        tit_3.title = ''
        tit_4 = Par('label', 'Transmission')
        tit_4.colspan = 2
        tit_5 = Par('bool', True, command='toggle_scatt_enabled(' \
                         + str(wid) + ')')
        tit_5.title = ''
        tit_6 = Par('label', 'Scattering')
        tit_6.colspan = 2
        self.trans_time = trans_time
        self.scatt_time = scatt_time
        self.trans_setup = trans_setup
        self.scatt_setup = scatt_setup
        self.space1 = space1
        self.space2 = space2
        self.t1 = tit_1
        self.t2 = tit_2
        self.t3 = tit_3
        self.t4 = tit_4
        self.t5 = tit_5
        self.t6 = tit_6
        self.group.add(trans_setup, scatt_setup, space1, trans_time, \
                       scatt_time, space2, \
                       tit_1, tit_2, tit_3, \
                       tit_4, tit_5, tit_6)
        for i in xrange(__number_of_sample__) :
            self.add_sample(i + 1)
        
    def add_sample(self, id):
        sample = Sample(id)
        self.samples[id] = sample
#        sample.do_trans.command = 'redo_trans(' + str(self.wid) + ', ' + str(id) + ')'
#        sample.do_scatt.command = 'redo_scatt(' + str(self.wid) + ', ' + str(id) + ')'
        self.group.add(sample.id_label, sample.name_text, sample.do_trans, sample.trans_time, \
                 sample.trans_res, sample.do_scatt, sample.scatt_time, sample.scatt_res)
    
    def run(self):
#        self.trans_time.enabled = False
#        self.scatt_time.enabled = False
#        self.t3.enabled = False
#        self.t5.enabled = False
        self.trans_setup.enabled = False
        self.scatt_setup.enabled = False
        try:
            while self.need_to_run():
                if self.need_to_run_trans():
                    self.run_trans_setup()
                    self.run_trans()
                if self.need_to_run_scatt():
                    self.run_scatt_setup()
                    self.run_scatt()
        finally:
#            self.trans_time.enabled = True
#            self.scatt_time.enabled = True
#            self.t3.enabled = True
#            self.t5.enabled = True
            self.trans_setup.enabled = True
            self.scatt_setup.enabled = True
            
    def need_to_run(self):
        return self.need_to_run_trans() or self.need_to_run_scatt()
        
    def need_to_run_trans(self):
        for i in self.samples:
            if self.samples[i].need_to_run_trans():
                return True
        return False

    def need_to_run_scatt(self):
        for i in self.samples:
            if self.samples[i].need_to_run_scatt():
                return True
        return False
    
    def run_trans_setup(self):
        slog('collecting neutrons for transmission')
        ts = self.trans_setup.value
        if ts != None and len(ts.strip()) > 0:
            slog('running transmission setup ' + str(ts).strip().replace('\r\n', ' + '))
            exec(str(ts))
        
    def run_trans(self):
        if self.need_to_run_trans():
            for i in sorted(self.samples):
                self.samples[i].run_transmission()
            self.run_trans()

    def run_scatt_setup(self):
        slog('collecting neutrons for scattering')
        ss = self.scatt_setup.value
        if ss != None and len(ss.strip()) > 0:
            slog('running scattering setup ' + str(ss).strip().replace('\r\n', ' + '))
            exec(str(ss))
        
    def run_scatt(self):
        if self.need_to_run_scatt():
            for i in sorted(self.samples):
                self.samples[i].run_scattering()
            self.run_scatt()

    
    def set_enabled(self, flag):
        self.t1.enabled = flag
        self.t2.enabled = flag
        self.t3.enabled = flag
        self.t4.enabled = flag
        self.t5.enabled = flag
        self.t6.enabled = flag
        self.trans_time.enabled = flag
        self.scatt_time.enabled = flag
        self.trans_setup.enabled = flag
        self.scatt_setup.enabled = flag
        for i in self.samples:
            self.samples[i].set_enabled(flag)
            
    def update_trans_time(self):
        for i in self.samples:
            self.samples[i].trans_time.value = self.trans_time.value

    def update_scatt_time(self):
        for i in self.samples:
            self.samples[i].scatt_time.value = self.scatt_time.value
        
    def toggle_trans_enabled(self):
        for i in self.samples:
            self.samples[i].do_trans.value = self.t3.value

    def toggle_scatt_enabled(self):
        for i in self.samples:
            self.samples[i].do_scatt.value = self.t5.value
        
    def dispose(self):
        for i in self.samples:
            self.samples[i].dispose()
        self.t1.dispose()
        self.t2.dispose()
        self.t3.dispose()
        self.t4.dispose()
        self.t5.dispose()
        self.t6.dispose()
        self.trans_time.dispose()
        self.scatt_time.dispose()
        self.group.dispose()
        self.trans_setup.dispose()
        self.scatt_setup.dispose()
        self.space1.dispose()
        self.space2.dispose()

def update_title(wid):
    b = get_workflow_block(wid)
    if not b is None:
        b.update_title()

def set_enabled(wid):
    b = get_workflow_block(wid)
    if not b is None:
        b.set_enabled()
                
def get_workflow_block(wid):
    global workflow_list
    for i in xrange(len(workflow_list)):
        wb = workflow_list[i]
        if wb.wid == wid:
            return wb
    return None
    
def change_trans_time(wid):
    wb = get_workflow_block(wid)
    if not wb is None:
        wb.table.update_trans_time()

def change_scatt_time(wid):
    wb = get_workflow_block(wid)
    if not wb is None:
        wb.table.update_scatt_time()
            
def toggle_trans_enabled(wid):
    wb = get_workflow_block(wid)
    if not wb is None:
        wb.table.toggle_trans_enabled()

def toggle_scatt_enabled(wid):
    wb = get_workflow_block(wid)
    if not wb is None:
        wb.table.toggle_scatt_enabled()
        
def remove_block(wid = None):
    if wid is None:
        if len(workflow_list) > 0:
            rmv = workflow_list.pop()
            rmv.dispose()
            __UI__.updateUI()
    else:
        wb = get_workflow_block(wid)
        if not wb is None:
            tt = 'Block ' + wb.title.value + ' removed'
            workflow_list.remove(wb)
            wb.dispose()
            slog(tt)
            __UI__.updateUI()

def insert_block(wid):
    global workflow_list
    old = None
    idx = -1
    for i in xrange(len(workflow_list)):
        wb = workflow_list[i]
        if wb.wid == wid:
            idx = i
            old = wb
            break
    if idx < 0:
        add_block()
    else:
        wb = WorkflowBlock()
        workflow_list.insert(idx + 1, wb)
        wb.group.moveAfterObject(old.group)
        wb.config.value = old.config.value
        wb.table.t3.value = old.table.t3.value
        wb.table.t5.value = old.table.t5.value
        wb.table.trans_time.value = old.table.trans_time.value
        wb.table.scatt_time.value = old.table.scatt_time.value
        wb.table.trans_setup.value = old.table.trans_setup.value
        wb.table.scatt_setup.value = old.table.scatt_setup.value
        for i in wb.table.samples:
            sample = wb.table.samples[i]
            old_sample = old.table.samples[i]
            sample.name_text.value = old_sample.name_text.value
            sample.do_trans.value = old_sample.do_trans.value
            sample.trans_time.value = old_sample.trans_time.value
            sample.do_scatt.value = old_sample.do_scatt.value
            sample.scatt_time.value = old_sample.scatt_time.value
        __UI__.updateUI()
        
                
def add_block():
    global workflow_list
    old = None
    if len(workflow_list) > 0 :
        old = workflow_list[-1]
    wb = WorkflowBlock()
    workflow_list.append(wb)
    if not old is None:
        wb.config.value = old.config.value
        wb.table.t3.value = old.table.t3.value
        wb.table.t5.value = old.table.t5.value
        wb.table.trans_time.value = old.table.trans_time.value
        wb.table.scatt_time.value = old.table.scatt_time.value
        wb.table.trans_setup.value = old.table.trans_setup.value
        wb.table.scatt_setup.value = old.table.scatt_setup.value
        for i in wb.table.samples:
            sample = wb.table.samples[i]
            old_sample = old.table.samples[i]
            sample.name_text.value = old_sample.name_text.value
            sample.do_trans.value = old_sample.do_trans.value
            sample.trans_time.value = old_sample.trans_time.value
            sample.do_scatt.value = old_sample.do_scatt.value
            sample.scatt_time.value = old_sample.scatt_time.value
    __UI__.updateUI()

def run_scan():
    act_load.enabled = False
    act_rmv.enabled = False
    act_run.enabled = False
    try:
        slog('start Bilby workflow')
        for wb in workflow_list:
            wb.reset_result()
        for wb in workflow_list:
            if wb.is_enabled() :
                wb.run()
        slog('workflow is finished')
    finally:
        act_load.enabled = True
        act_rmv.enabled = True
        act_run.enabled = True
        
def load_workflow():
    global workflow_list
    fn = selectSaveFile(['*.pkl'])
    if fn is None:
        return
    wl = None
    try :
        file = open(fn, 'rb')
        wl = pickle.load(file)
    finally:
        file.close()
    if not wl is None and len(wl) > 0:
        if len(wl) > len(workflow_list) :
            for i in xrange(len(wl) - len(workflow_list)):
                workflow_list.append(WorkflowBlock())
        elif len(wl) < len(workflow_list) :
            for i in xrange(len(workflow_list) - len(wl)):
                rmv = workflow_list.pop()
                rmv.dispose()
        for i in xrange(len(wl)):
            workflow_list[i].from_rep(wl[i])
    __UI__.updateUI()

def export_workflow():
    global workflow_list
    path = selectSaveFile(['*.pkl'])
    if path == None:
        return
    if not path.lower().endswith('.pkl') :
        path += '.pkl'
    fi = File(path)
    fp = fi.getParentFile()
    if not fp.exists():
        if not fp.makedirs():
            print 'Error: failed to make directory: ' + path
            return
    slog('workflow exported to ' + path)
    file = open(path, 'wb')
    wf_rep = []
    for wb in workflow_list:
        wf_rep.append(wb.to_rep())
    try:
        pickle.dump(wf_rep, file)
    except:
        traceback.print_exc(__writer__)
    finally:
        file.close()

    
act_load = Act('load_workflow()', 'Load Workflow')
act_exp = Act('export_workflow()', 'Export Workflow')
act_exp.independent = True
act_rmv = Act('remove_block()', 'Remove Workflow Block')
act_rmv.independent = True
act_add = Act('add_block()', 'Add Workflow Block')
act_add.independent = True 
act_run = Act('run_scan()', 'Run Bilby Workflow')
act_run.colspan = 2
    
#def add_sample(table, i):
##    group.add(s1_idx, s1_name, s1_trans, s1_trans_time, s1_trans_res, s1_scatt, s1_scatt_time, s1_scatt_res)
#    table.add_sample(sam)
#add_block()
workflow_list.append(WorkflowBlock())

# Use below example to create a new Plot
# Plot4 = Plot(title = 'new plot')

# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    from threading import Thread
    global workflow_list
    # Use the provided resources, please don't remove.
    global Plot1
    global Plot2
    global Plot3
    
    print str(fns) + ' selected'
    # check if a list of file names has been given
#    run_action(act_run)
#    logErr('start new thread')
#    task = Thread(target=run_action(act_run))
#    task.start()
#    logErr('started')
    
def __dispose__():
    global Plot1
    global Plot2
    global Plot3
    Plot1.clear()
    Plot2.clear()
    Plot3.clear()
