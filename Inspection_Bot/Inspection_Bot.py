#!/usr/bin/python

from multiprocessing import Process, Pipe ,Queue

#from camera import *
from printer_communication.my_pronsole import *
import time

#sys.path.append("..")
from Camera.auto_snap_camera import *



def f(conn):
    conn.send([42, None, 'hello'])
    conn.close()
    

# http://pymotw.com/2/cmd/ for info on cmd library. 
def worker():
    """worker function"""
    print 'Worker'
    #run_console(sys.stdin,sys.stdout)

def keyboard_input(main_function_command_queue):
    while True:
        try:
            command=int(raw_input('Input:'))
                #printer_conn.send(printer_command)
        except ValueError:
            print "Not a number"
            main_function_command_queue.put(command)
        if printer_command==5:
            break

if __name__ == '__main__':
    #parent_conn, child_conn = Pipe()
    #printer_process = Process(target=f, args=(child_conn,))
    #printer_process.start()
    #print parent_conn.recv()   # prints "[42, None, 'hello']"
    #printer_process.join()
    #stdin=open("stdin_commands.txt","r")
    #stdout=open("stdout_commands.txt","w")
    #time.sleep(1.0)
    #stdin_0 = sys.stdin
    #printer_conn, main_to_printer_conn  = Pipe()
    printer_command_queue = Queue()
    main_function_command_queue = Queue()
    camera_command_queue = Queue()
    #camera_to_main_conn, main_to_camera_conn  = Pipe()
    #camera_command_queue = Queue()
    #q=Queue()
    #run_console(sys.stdin,sys.stdout)
    #printer_process = Process(target=run_console,args=(printer_command_queue,sys.stdout))
    #printer_process.start()
    
    #keyboard_process = Process(target=keyboard_input,args=(main_function_command_queue,sys.stdout))
    #keyboard_process.start()
    
    camera_process = Process(target=Run_Camera,args=(main_function_command_queue,sys.stdout))
    camera_process.start()
    
    # test by entering numbers 0, 1,2,3,4
    while True:
        try:
            printer_command=int(raw_input('Input:'))
            #printer_conn.send(printer_command)
        except ValueError:
            print "Not a number"
        printer_command_queue.put(printer_command)
        #main_to_printer_conn.send(printer_command)
        
        
   
    
#     stdin_0 = open("stdin_commands.txt","r")
#     stdout_0 = sys.stdout
#     printer_process = Process(target=run_console,args=(stdin_0,stdout_0))
#     time.sleep(2.0)
#     printer_process.start()
#     time.sleep(2.0)
#     stdin_0.readline()
#     time.sleep(2.0)
#     stdin_0.readline()
    #time.sleep(1.0)
    #sys.stdout.
    #sys.stdin.readline()
    #time.sleep(1.0)
    #sys.stdin.readline()
    #sys.stdin.read("connect\n")
    #print "line printed"
    #time.sleep(1.0)
    #sys.stdin.read("G0 X20 Y20 F2000\n")
    #time.sleep(1.0)
    #sys.stdin.readline("G28\n")
   # time.sleep(1.0)
    #sys.stdin.readline("M84\n")
    #time.sleep(1.0)
    #sys.stdin.readline("disconnect\n")
    #printer_process = multiprocessing.Process(target=camera)
    #jobs.append(printer_process)
    #c = multiprocessing.Process(target=camera)
    #c.daemon = True
    
    #printer_process = Process(target=worker)
    #time.sleep(2)
    #printer_process.start()
    #printer_process.daemon = False
    
    #c.start()
    #time.sleep(4)
    #printer_process.start()