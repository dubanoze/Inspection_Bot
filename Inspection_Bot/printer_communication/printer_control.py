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

#Notice that the x and y offset of the chip relative to the printer bead is added here

def load_component_coordinates():
    gcodes=['G28 X F2000','G28 Y F2000','G28 Z',"G1 Z10.00 F2000"]
    x_offset = 27.10
    y_offset = 11.11

    try:
        f = open("../shortest_path/best_found_tour.txt")
    except:
        f = open("./shortest_path/best_found_tour.txt")
    for line in f:
        vec=re.findall(r'\d+.\d+', line)
        command = "G1 X{0:.2f} Y{1:.2f} F2000".format(float(vec[0])+x_offset,float(vec[1])+y_offset)
        gcodes.append(command)
    f.close()
    return gcodes


# a modified version of kliments pronsole program.  Used to control the printer
#from another program rather than by human input.
class program_controlled_pronsole(pronsole):
    def __init__(self):
        pronsole.__init__(self)
        pronsole.use_rawinput=False


def run_printer(command_input=None,console_output=None):

    interp = program_controlled_pronsole()
    
    
    command_line = 0
    
    gcodes=[]
    gcodes=load_component_coordinates()
    
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
    run_printer()