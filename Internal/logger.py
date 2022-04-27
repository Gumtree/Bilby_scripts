from java.lang import System
from java.io import File
from time import strftime, localtime

__export_folder__ = System.getProperty('sics.data.path') + '/reports'

__buffer_log_file__ = __export_folder__

fi = File(__buffer_log_file__)
if not fi.exists():
    if not fi.mkdirs():
        print 'Error: failed to make directory: ' + __buffer_log_file__
__history_log_file__ = __buffer_log_file__ + '/History.txt'
__buffer_log_file__ += '/LogFile.txt'
__buffer_logger__ = open(__buffer_log_file__, 'a')
__history_logger__ = open(__history_log_file__, 'a')


def update_buffer_log_folder():
    global __buffer_log_file__, __export_folder__, __buffer_logger__, __history_log_file__, __history_logger__
    __buffer_log_file__ = __export_folder__
    fi = File(__buffer_log_file__)
    if not fi.exists():
        if not fi.mkdirs():
            print 'Error: failed to make directory: ' + __buffer_log_file__
    __history_log_file__ = __buffer_log_file__ + '/History.txt'
    __buffer_log_file__ += '/LogFile.txt'
    if __buffer_logger__:
        __buffer_logger__.close()
    __buffer_logger__ = open(__buffer_log_file__, 'a')
    if __history_logger__:
         __history_logger__.close()
    __history_logger__ = open(__history_log_file__, 'a')

def log_all(text):
    global __buffer_logger__, __buffer_log_file__
    try:
        __buffer_logger__.write(text + '\n')
        __buffer_logger__.flush()
    except:
        try:
            __buffer_logger__.close()
        except:
            pass
        try:
            __buffer_logger__ = open(__buffer_log_file__, 'a')
        except:
            print 'failed to open log file: ' + __buffer_log_file__
            return
        log_all(text)

def log_his(text):
    global __history_logger__, __history_log_file__
    try:
        __history_logger__.write(text + '\n')
        __history_logger__.flush()
    except:
        try:
            __history_logger__.close()
        except:
            pass
        try:
            __history_logger__ = open(__history_log_file__, 'a')
        except:
            print 'failed to open history log file: ' + __history_log_file__
            return
        log_his(text)

def logBook(text):
    from Internal import HISTORY_KEY_WORDS
    try:
        tsmp = strftime("[%Y-%m-%d %H:%M:%S]", localtime())
        log_all(tsmp + ' ' + text)
        for item in HISTORY_KEY_WORDS:
            if text.startswith(item):
                log_his(tsmp + ' ' + text)
                break
    except:
        print 'failed to log'
    
