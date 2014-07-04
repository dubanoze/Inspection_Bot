
import re



if __name__ == '__main__':
    chip_x_offset = 27.10
    chip_y_offset = 11.11
    f=open("../shortest_path/best_found_tour.txt","r")
    #path_commands = []
    
    commands = ["G28 X F2000",
                     "G4 P2000",
                     "G28 Y F2000",
                     "G4 P2000",
                     "G4 P500"]
    
    for line in f:
        vec=re.findall(r'\d+.\d+', line)
        x=float(vec[0])+chip_x_offset
        y=float(vec[1])+chip_y_offset
        #y=vec[1]+chip_y_offset
        #print str(x)
        gcode_move_command="G0 X{0:.2f} Y{1:.2f} F3000".format(x,y)
        commands.append(gcode_move_command)
        #f.write(gcode_move_command+"\n")
        gcode_wait_command="G4 P500"
        commands.append(gcode_wait_command)
    
    commands.append("M84")
    f.close()
    
    f_w=open("./rambo.gcode","w")
    for line in commands:
        print line
        f_w.write(line+"\n")
    f_w.close()
    