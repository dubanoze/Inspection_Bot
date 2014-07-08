if __name__ == '__main__':
    
    
    file_pointer = open("RAMBo1-3l.mnt",'r')
    parts_list = []
    for line in file_pointer:
        part_info = line.split()
        
        parts_list.append(part_info)
    
    
    file_pointer.close()
    
    
    output_file_pointer = open("vectors.txt",'w')
    
    number_of_parts = 0
    for part_info in parts_list:
        output_file_pointer.write(str(part_info[1]+ "    "+str(part_info[2])+'\n'))
        number_of_parts=number_of_parts+1
    
    
    
    output_file_pointer.close()
    
    print "number of parts = " + str(number_of_parts)