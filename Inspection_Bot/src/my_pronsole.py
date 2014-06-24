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

class my_second_pronsole(pronsole):
    def __init__(self):
        pronsole.__init__(self)
        pronsole.use_rawinput=False

def run_console(command_input,console_output):

    interp = my_second_pronsole()
    interp.parse_cmdline(sys.argv[1:])
    try:
        #interp.cmdloop()
        interp.onecmd("connect")
        time.sleep(1.0)

    except SystemExit:
        interp.p.disconnect()
    except:
        print _("Caught an exception, exiting:")
        traceback.print_exc()
        interp.p.disconnect()
    interp.onecmd("G28")
    time.sleep(2.0)
    interp.onecmd("G0 X100 Y100 F2000")
    time.sleep(2.0)
    interp.onecmd("disconnect")
    time.sleep(2.0)
    interp.onecmd("exit")
    time.sleep(2.0)