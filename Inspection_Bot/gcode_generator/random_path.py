
import random

if __name__ == '__main__':
    x_min = 22.00
    y_min = 10.00
    
    x_max = 127.00
    y_max = 104.00
    speed = 2000
    #G0 X361.1 Y159.0 F6000"
    commands = ["G28","G90","G0 Z10.0 F6000"]
    random.seed(12181984)
    for i in range(0,10):
        x=random.randrange(x_min,x_max)
        y=random.randrange(y_min,y_max)
        gcode_line = "G0 X{0:.2f} Y{1:.2f} F{2:d}".format(x,y,speed)
        print gcode_line
        commands.append(gcode_line)
    
    #commands = set(commands)
    file = open("random_path.gcode",'w')
    for line in commands:
        file.write(line+'\n')
    file.close()