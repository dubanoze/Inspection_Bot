#!/usr/bin/python

from multiprocessing import Process, Pipe

from camera import *
from my_pronsole import *
import time



def f(conn):
    conn.send([42, None, 'hello'])
    conn.close()
    

# http://pymotw.com/2/cmd/ for info on cmd library. 
def worker():
    """worker function"""
    print 'Worker'
    #run_console(sys.stdin,sys.stdout)


if __name__ == '__main__':
    #parent_conn, child_conn = Pipe()
    #p = Process(target=f, args=(child_conn,))
    #p.start()
    #print parent_conn.recv()   # prints "[42, None, 'hello']"
    #p.join()
    #stdin=open("stdin_commands.txt","r")
    #stdout=open("stdout_commands.txt","w")
    #time.sleep(1.0)
    #stdin_0 = sys.stdin
    run_console(sys.stdin,sys.stdout)
#     stdin_0 = open("stdin_commands.txt","r")
#     stdout_0 = sys.stdout
#     p = Process(target=run_console,args=(stdin_0,stdout_0))
#     time.sleep(2.0)
#     p.start()
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
    #p = multiprocessing.Process(target=camera)
    #jobs.append(p)
    #c = multiprocessing.Process(target=camera)
    #c.daemon = True
    
    #p = Process(target=worker)
    #time.sleep(2)
    #p.start()
    #p.daemon = False
    
    #c.start()
    #time.sleep(4)
    #p.start()