import cv2.cv as cv
import cv2
import time 
import os
import numpy as np
import math
if __name__ == '__main__':
    #directory='data/bot_movement_samples/'
    laser_image_directory = 'data/chip_laser_photos_2/'
    laser_image_file_names = os.listdir(laser_image_directory)
    laser_image_file_names.sort()
    
    led_image_directory = 'data/Chip_led_photos/'
    led_image_file_names = os.listdir(led_image_directory)
    led_image_file_names.sort()
    
    laser_data_directory='data/laser_binary_despec/'
    laser_file_names = os.listdir(laser_data_directory)
    laser_file_names.sort()
    
    chip_data_directory='data/Binary_contact_3/'
    chip_file_names = os.listdir(chip_data_directory)
    chip_file_names.sort()
    #X_pixel_positions=[]
    #Y_pixel_positions=[]
    print len(laser_image_file_names)
    print len(led_image_file_names)
    print len(laser_file_names)
    print len(chip_file_names)
    for i in range(0, len(chip_file_names)):
        l_i_img = cv2.imread(laser_image_directory+laser_image_file_names[i])
        c_i_img = cv2.imread(led_image_directory+led_image_file_names[i])
        
        
        c_img = cv2.imread(chip_data_directory+chip_file_names[i])
        l_img = cv2.imread(laser_data_directory+laser_file_names[i])
        
        c_gray = cv2.cvtColor(c_img,cv2.COLOR_BGR2GRAY)
        l_gray = cv2.cvtColor(l_img,cv2.COLOR_BGR2GRAY)
        
        c_retval, c_dst=cv2.threshold(c_gray, 100, 255, cv2.THRESH_BINARY_INV)
        l_retval, l_dst=cv2.threshold(l_gray, 100, 255, cv2.THRESH_BINARY_INV)
        
        selected_pixels =cv2.bitwise_and(c_dst,l_dst)
        
        while True:
            cv.ShowImage("raw laser photos",cv.fromarray(l_i_img))
            cv.ShowImage("chip raw image with leds",cv.fromarray(c_i_img))
            cv.ShowImage("laser pixels", cv.fromarray(l_dst))
            cv.ShowImage("component pixels", cv.fromarray(c_dst))
            cv.ShowImage("selected pixels", cv.fromarray(selected_pixels))
            if cv.WaitKey(10) == 27:
                break
        
        
    #for file in part_file_names: