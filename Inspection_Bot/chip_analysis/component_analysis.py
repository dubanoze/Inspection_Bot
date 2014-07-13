import cv2.cv as cv
import cv2
import time 
import os
import numpy as np


def get_pixel_list(img):
    pixels = []
    
    #print img[1,1]
    #img = np.asarray(img[:,:,:])
    height, width, depth = img.shape
    for i in range(0, height):
        for j in range(0, width):
            pixel_value = img[ i, j]
            # Since OpenCV loads color images in BGR, not RGB
            h = pixel_value[0]
            s = pixel_value[1]
            v = pixel_value[2]
            pixels.append([h,s,v])
    return pixels

#see http://en.wikipedia.org/wiki/Mean_of_circular_quantities
def get_hue_mean(pixels):
    hue_list =[]
    
    for pixel in pixels:
        hue_list.append(pixel[0])
    hue_list=np.radians(hue_list)
    hue_mean =np.arctan2(np.mean(np.sin(hue_list)),np.mean(np.cos(hue_list)))
    hue_mean=np.degrees(hue_mean)
    return hue_mean
    #first_arg = 0
    #second_arg = 0
def get_hue_std(pixels):
    hue_list =[]
    
    for pixel in pixels:
        hue_list.append(pixel[0])
    hue_list=np.radians(hue_list)
    hue_std =np.arctan2(np.std(np.sin(hue_list)),np.std(np.cos(hue_list)))
    hue_std=np.degrees(hue_std)
    return hue_std
    

if __name__ == '__main__':
    directory_path = './similar_cropped_parts/'
    part_file_names = os.listdir(directory_path)
    pixels=[]
    for part in part_file_names:
        img = cv2.imread(directory_path+part)
        img = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        pixels=pixels+get_pixel_list(img)
    
    pixel_mean= np.mean(pixels, axis=0)
    pixel_standard_deviation= np.std(pixels,axis=0)    
    #pixel_max = np.amax(pixels,axis=0)
    #pixel_min = np.amin(pixels,axis=0)
    #print pixel_mean
    #print pixel_standard_deviation
    #print pixel_max
    hue_mean =  get_hue_mean(pixels)
    hue_std=  get_hue_std(pixels)
    #hue_min = 
    factor = 4
    pixel_min = [get_hue_mean(pixels) - factor*get_hue_std(pixels),pixel_mean[1]-factor*pixel_standard_deviation[1],pixel_mean[2]-factor*pixel_standard_deviation[2]]
    print pixel_min
    pixel_max = pixel_min = [get_hue_mean(pixels) + factor*get_hue_std(pixels),pixel_mean[1]+factor*pixel_standard_deviation[1],pixel_mean[2]+factor*pixel_standard_deviation[2]]
    print pixel_max
    #print "pixel max = ({0:f},{1:f},{2:f})".format(float(pixel_max[0],pixel_max[1],pixel_max[2]))
    #while True:
        #k = cv2.waitKey(0)&0xFF
        #if k == ord('a'):