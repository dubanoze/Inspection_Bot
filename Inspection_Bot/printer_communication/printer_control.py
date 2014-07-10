#!/usr/bin/env python

# This file is part of the Printrun suite.
#
# Printrun is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Printrun is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Printrun.  If not, see <http://www.gnu.org/licenses/>.

import sys
import traceback
#from console_module import *
import time
from printrun.pronsole import *
from multiprocessing import Queue
import re
def points():
    gcodes=['G28 X F2000','G4 P1000','G28 Y F2000','G4 P1000']
    

    try:
        f = open("../shortest_path/best_found_tour.txt")
    except:
        f = open("./shortest_path/best_found_tour.txt")
    for line in f:
        vec=re.findall(r'\d+.\d+', line)
        command = "G1 X{0:.2f} Y{1:.2f} F1000".format(float(vec[0]),float(vec[1]))
        gcodes.append(command)
    f.close()
    return gcodes



class program_controlled_pronsole(pronsole):
    def __init__(self):
        pronsole.__init__(self)
        pronsole.use_rawinput=False

def run_console(command_input=None,console_output=None):

    interp = program_controlled_pronsole()
    
    
    command_line = 0
    
    gcodes=[]
    gcodes=points()
    
    interp.onecmd("connect")
    interp.onecmd("G28")
    while True:
        #command = command_input.recv()
        
        


        command = command_input.get()
        
        #command=command[0]
        # these commands should be moved to program_controlled_pronsole for later

        if command=='next':
            print "sending vector to printer"
            if command_line<len(gcodes):
                printer_command = gcodes[command_line]
                interp.onecmd(printer_command)
                command_line=command_line+1
            else:
                print "no more commands"
                break;
        if command=='exit':
            break;
            
    interp.onecmd("M84")
    interp.onecmd("disconnect")
    interp.onecmd("exit")

if __name__ == '__main__':
    run_console()