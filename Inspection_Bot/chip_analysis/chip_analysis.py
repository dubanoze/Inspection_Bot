import os
import cv2
if __name__ == '__main__':
    
    chip_image_path_list=[]
    directory_storage_path = '../../Chip_Files/'
    directory_list = os.listdir(directory_storage_path)
    for directory in directory_list:
        chip_file_names = os.listdir(directory_storage_path+directory)
        #print chip_file_names
        for chip_file in chip_file_names:
            if chip_file == 'image_018.png':
                chip_image_path = directory_storage_path+directory+'/'+chip_file
                chip_image_path_list.append(chip_image_path)
                
    #print chip_image_path_list
    for chip_image_path in chip_image_path_list:
        #if 'chip_0' in chip_image_path:
        img = cv2.imread(chip_image_path)
        while True:
            k = cv2.waitKey(0)&0xFF
            cv2.imshow('image',img)
            if k==27:
                break;
            
        
        