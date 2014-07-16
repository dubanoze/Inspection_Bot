import cv2.cv as cv
import cv2
import time 
import os
import numpy as np

#return all the pixel in an image as a 
# hue saturation and value or HSV list. 
def get_pixel_list(img):
    pixels = []
    height, width, depth = img.shape
    for i in range(0, height):
        for j in range(0, width):
            pixel_value = img[ i, j]
            h = pixel_value[0]
            s = pixel_value[1]
            v = pixel_value[2]
            pixels.append([h,s,v])
    return pixels

#calculate the average hue of the pixels in a list.  Notice that
# this requires a specialized calculation because the HSV color scale 
# is different from the traditional RBG color scale. 
#see http://en.wikipedia.org/wiki/Mean_of_circular_quantities and 
# http://en.wikipedia.org/wiki/HSL_and_HSV for more information
def get_hue_mean(pixels):
    hue_list =[]
    
    for pixel in pixels:
        hue_list.append(pixel[0])
    hue_list=np.radians(hue_list)
    hue_mean =np.arctan2(np.mean(np.sin(hue_list)),np.mean(np.cos(hue_list)))
    hue_mean=np.degrees(hue_mean)
    return hue_mean


# calculate the standard deviation of the hue of the pixels.  Methodology for 
# calculating the standard deviation is similar to the methodology for calculating
# the mean of the pixels. 
def get_hue_std(pixels):
    hue_list =[]
    
    for pixel in pixels:
        hue_list.append(pixel[0])
    hue_list=np.radians(hue_list)
    hue_std =np.arctan2(np.std(np.sin(hue_list)),np.std(np.cos(hue_list)))
    hue_std=np.degrees(hue_std)
    return hue_std

# This script takes all the images in the similar_cropped_parts folder
# and returns the statistical min and max pixel ranges of those files.
# These values are used by the Camera->threshold_camera.py script to 
# differenciate different components from one another. 
if __name__ == '__main__':
    # directory holding the collection of images to be analysed.  Right now
    # the similar_cropped_parts directory holds images of the center of 
    # capasitors held on the rambo board. 
    directory_path = './similar_cropped_parts/'
    
    
    part_file_names = os.listdir(directory_path)
    pixels=[]
    for part in part_file_names:
        img = cv2.imread(directory_path+part)
        img = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        pixels=pixels+get_pixel_list(img)
    
    #find the mean and standard deviation of the pixels returned. 
    #Some of these calcualtions are inaccurate
    pixel_mean= np.mean(pixels, axis=0)
    pixel_standard_deviation= np.std(pixels,axis=0)    
    
    #replace the inaccurate calculate of the hue pixel average 
    hue_mean =  get_hue_mean(pixels)
    hue_std=  get_hue_std(pixels)
    #hue_min = 
    factor = 3
    pixel_min = [get_hue_mean(pixels) - factor*get_hue_std(pixels),pixel_mean[1]-factor*pixel_standard_deviation[1],pixel_mean[2]-factor*pixel_standard_deviation[2]]
    print "Estimated pixel minimum "+str(pixel_min)
    pixel_max = pixel_min = [get_hue_mean(pixels) + factor*get_hue_std(pixels),pixel_mean[1]+factor*pixel_standard_deviation[1],pixel_mean[2]+factor*pixel_standard_deviation[2]]
    print "Estimated pixel maximum "+str(pixel_max)
    



    

