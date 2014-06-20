
import re
import math

def calc_total_distance(X_list,Y_list):
    for i in range(0,len(X_list)-1):
        pass

if __name__ == '__main__':
    x_offset = 27.10
    y_offset = 11.11
    f = open("../PCB_Information/vectors.txt", "r")
    X_list=[]
    Y_list=[]
    for line in f:
        vec=re.findall(r'\d+.\d+', line)
        x=vec[0]
        y=vec[1]
        X_list.append(x)
        Y_list.append(y)
    print X_list
    print Y_list
    
    
    f.close()