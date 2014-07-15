#!/usr/bin/env python



import sys
import traceback
#from console_module import *
import time
from printrun.pronsole import *
from multiprocessing import Queue
import re

# a main program to test whether pinter_control.py can connect to the printer.
# Since the main program is not linked to the Inspection_Bot.py program no 
# commands will be sent to the printer. 
if __name__ == '__main__':
    run_printer()

#Notice that the x and y offset of the chip relative to the printer bed is added here

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

# Allows Inspection_Bot.py to control the printer
def run_printer(command_input=None,console_output=None):
    
    #create the variable that will send commands to the printer
    interp = program_controlled_pronsole()
    
    # a counter to keep track of how many command have been sent
    command_line = 0
    
    #load gcode commands into a list    
    gcodes=load_component_coordinates()
    #connect to the printer
    interp.onecmd("connect")

    while True:
        #command = command_input.recv()
        
        
        
        #get commands send by Inspection_Bot.py from the command Queue.
        #Important Note!:  This is a multiprocessing queue meaning that
        #attempting to read from and empty queue will cause the process to 
        # stop until there is something in the queue to read. See
        #https://docs.python.org/2/library/multiprocessing.html
        #for more details
        command = command_input.get()
        
        
        # send the next command to the printer
        if command=='next':
            print "sending vector to printer"
            if command_line<len(gcodes):
                printer_command = gcodes[command_line]
                interp.onecmd(printer_command)
                command_line=command_line+1
            # if there are no other command to send then exit the program
            else:
                print "no more commands"
                break;
        # exit the program 
        if command=='exit':
            break;
    #stop the motors
    interp.onecmd("M84")
    #disconnect from the printer
    interp.onecmd("disconnect")
    #exit the pronsole control program
    interp.onecmd("exit")

