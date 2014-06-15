#!/usr/bin/python

from multiprocessing import Process, Pipe

from camera import *
from pronsole import *
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
    run_console(sys.stdin,sys.stdout)
    
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