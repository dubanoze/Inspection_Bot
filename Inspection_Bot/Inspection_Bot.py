#!/usr/bin/python

from multiprocessing import Process,Queue

#from camera import *
from printer_communication.my_pronsole import *
import time

#sys.path.append("..")
from Camera.auto_snap_camera import *


import cv2


def f(conn):
    conn.send([42, None, 'hello'])
    conn.close()
    

# http://pymotw.com/2/cmd/ for info on cmd library. 
def worker():
    """worker function"""
    print 'Worker'
    #run_console(sys.stdin,sys.stdout)

def keyboard_input_2(main_function_command_queue,fileno):
    sys.stdin = fileno
    while True:
        command=raw_input('\nInput:')
        main_function_command_queue.put(command)
        if command=='exit':
            break

def control_process(main_function_command_queue):
    printer_command_queue = Queue()
    printer_process = Process(target=run_console,args=(printer_command_queue,sys.stdout))
    

    
    camera_process = Process(target=Run_Camera,args=(main_function_command_queue,sys.stdout))
    
    
    while True:
        #cv.NamedWindow("main", 1)
        #k = cv2.waitKey(0)&0xFF
        
        if not main_function_command_queue.empty():
            command = main_function_command_queue.get()
            print "recieved command = " + str(command)
        
        if command == 'ready':
            printer_command_queue.put("next")
        elif command == 'camera':
            camera_process.start()
        elif command == 'printer':
            printer_process.start()
        elif command=='exit':
            printer_command_queue.put("exit")
        else:
            printer_command_queue.put(command)

if __name__ == '__main__':
    printer_command_queue = Queue()
    camera_command_queue = Queue()

    camera_process = Process(target=Run_Camera,args=(camera_command_queue,sys.stdout))
    printer_process = Process(target=run_console,args=(printer_command_queue,sys.stdout))
    
    printer_process.start()
    nap=4.0
    printer_command_queue.put("load")
    time.sleep(nap)
    printer_command_queue.put("connect")
    time.sleep(nap)
    printer_command_queue.put("G28")
    time.sleep(nap)
    
    printer_command_queue.put("G0 Z26.0 F6000")
    time.sleep(nap)
    printer_command_queue.put("G0 X361.1 Y159.0 F6000")
    time.sleep(nap)
    printer_command_queue.put("G92 X0 Y0 Z0")
    time.sleep(15)
    camera_process.start()
    
    while True:
        #cv.NamedWindow("main", 1)
        #k = cv2.waitKey(0)&0xFF
        
        if not camera_command_queue.empty():
            camera_command = camera_command_queue.get()
            if camera_command == 'ready':
                pass
                printer_command_queue.put("next")
            elif camera_command=='exit':
                printer_command_queue.put("exit")
                break
    #camera_process.join()
    #printer_process.join()
    #camera_pr
    
    
    