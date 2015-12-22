from gumpy.commons.logger import log
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

class WorkflowBlock():
    def __init__(self):
        global __workflow_id__
        self.wid = __workflow_id__
        __workflow_id__ += 1
#        self.config = config
#        self.samples = samples
        gc = Group('Workflow Block #' + str(self.wid))
        gc.colspan = 2
        ctext = Par('string', '')
        ctext.height = 80
        ctext.title = 'configuration'
        gc.add(ctext)
        #gs = Group('samples')
        gt = SampleTable(self.wid)
        
        gc.add(gt.group)
        self.group = gc
        self.config = ctext
        self.table = gt

    def __copy__(self):
        pass
        
    def dispose(self):
        self.config.dispose()
        self.table.dispose()
        self.group.dispose()
        
    def run(self):
        log('starting workflow block ' + str(self.wid))
        log('running configuration setup')
        exec(str(self.config.value))
        self.table.run()
        log('workflow finished for block ' + str(self.wid))
        
class Sample():
    def __init__(self, idx):
        self.idx = idx
        
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
        if self.do_trans.value:
            log('start transmission collect for sample ' + str(self.idx))
            scan10(self.idx, self.trans_time.value, self.name_text.value)
            self.trans_res.value = get_base_filename()
        
    def run_scattering(self):
        if self.do_scatt.value:
            log('start scattering collect for sample ' + str(self.idx))
            scan10(self.idx, self.scatt_time.value, self.name_text.value)
            self.scatt_res.value = get_base_filename()
        
class SampleTable():
    def __init__(self, wid, name = 'Samples'):
        self.wid = wid
        self.samples = dict()
        self.group = Group(name)
        self.group.hideTitle = True
        self.group.numColumns = 8
        trans_time = Par('float', '60', command='change_trans_time(' \
                         + str(wid) + ')')
        trans_time.title = 'transmission time'
        trans_time.colspan = 4
        scatt_time = Par('float', '120', command='change_scatt_time(' \
                         + str(wid) + ')')
        scatt_time.title = 'scattering time'
        scatt_time.colspan = 4
         
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
        self.t1 = tit_1
        self.t2 = tit_2
        self.t3 = tit_3
        self.t4 = tit_4
        self.t5 = tit_5
        self.t6 = tit_6
        self.group.add(trans_time, scatt_time, tit_1, tit_2, tit_3, \
                       tit_4, tit_5, tit_6)
        for i in xrange(__number_of_sample__) :
            self.add_sample(Sample(i + 1))
        
    def add_sample(self, sample):
        self.samples[sample.idx] = sample
        s1_idx = Par('label', str(sample.idx))
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
        sample.id_label = s1_idx
        sample.name_text = s1_name
        sample.do_trans = s1_trans
        sample.trans_time = s1_trans_time
        sample.trans_res = s1_trans_res
        sample.do_scatt = s1_scatt
        sample.scatt_time = s1_scatt_time
        sample.scatt_res = s1_scatt_res
        self.group.add(sample.id_label, sample.name_text, sample.do_trans, sample.trans_time, \
                 sample.trans_res, sample.do_scatt, sample.scatt_time, sample.scatt_res)
    
    def run(self):
        log('collect neutrons for transmission')
        for i in self.samples:
            self.samples[i].run_transmission()
        log('collect neutrons for scattering')
        for i in self.samples:
            self.samples[i].run_scattering()
        
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
            
def get_workflow_block(wid):
    global workflow_list
    for i in xrange(len(workflow_list)):
        wb = workflow_list[i]
        if wb.wid == wid:
            return wb
    
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
        
def remove_block():
    if len(workflow_list) > 0:
        rmv = workflow_list.pop()
        rmv.dispose()
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
        wb.table.trans_time.value = old.table.trans_time.value
        wb.table.scatt_time.value = old.table.scatt_time.value
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
    log('start workflow')
    for wb in workflow_list:
        wb.run()

act_rmv = Act('remove_block()', 'Remove Workflow Block')
act_add = Act('add_block()', 'Add Workflow Block') 
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
    global workflow_list
    # Use the provided resources, please don't remove.
    global Plot1
    global Plot2
    global Plot3
    
    # check if a list of file names has been given
    run_action(act_run)
    
def __dispose__():
    global Plot1
    global Plot2
    global Plot3
    Plot1.clear()
    Plot2.clear()
    Plot3.clear()
