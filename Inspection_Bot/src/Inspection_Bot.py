#!/usr/bin/python

import multiprocessing, subprocess

from camera import *
from pronsole import *
import time


# http://pymotw.com/2/cmd/ for info on cmd library. 
def worker():
    """worker function"""
    print 'Worker'
    return

def subprocessExe(cmd):
   subprocess.call([cmd], shell=False)

if __name__ == '__main__':
    #p = multiprocessing.Process(target=camera)
    #jobs.append(p)
    c = multiprocessing.Process(target=camera)
    c.daemon = True
    
    #p = multiprocessing.Process(target=run_pronsole)
    #p.daemon = False
    
    #c.start()
    #time.sleep(4)
    #p.start()