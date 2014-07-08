#!/usr/bin/python

import cv2.cv as cv
import cv2
import datetime
import os
import numpy as np
import pickle



def Get_Color_Hist(im):
    h = np.zeros((300,256,3))
    histograms=[]
    if im.nChannels == 2:
        color = [(255,255,255)]
        cvm_img = np.asarray(im[:,:])
    elif im.nChannels == 3:
        color = [ (255,0,0),(0,255,0),(0,0,255) ]
        cvm_img = np.asarray(im[:,:])
    for ch, col in enumerate(color):
        hist_item = cv2.calcHist([cvm_img],[ch],None,[256],[0,256])
        histograms.append(hist_item)
        #cv2.normalize(hist_item,hist_item,0,255,cv2.NORM_MINMAX)
        #hist=np.int32(np.around(hist_item))
        #pts = np.int32(np.column_stack((bins,hist)))
        #cv2.polylines(h,[pts],False,col)
    #y=np.flipud(h)
    return histograms

def Generate_Histogram_Curve(hist_item):
    bins = np.arange(256).reshape(256,1)
    h = np.zeros((300,256,3))
    curve_hist = Make_Zero_Hist()
    #hist_item = cv2.calcHist([im],[ch],None,[256],[0,256])
    cv2.normalize(hist_item,curve_hist,0,255,cv2.NORM_MINMAX)
    hist=np.int32(np.around(curve_hist))
    pts = np.int32(np.column_stack((bins,hist)))
    cv2.polylines(h,[pts],False,(255,255,255))
    y=np.flipud(h)
    return y

def Make_Zero_Hist():
    size = 200, 200, 3
    zero_matrix = np.zeros(size, dtype=np.uint8)
    histogram=Get_Gray_Hist_Info(zero_matrix)
    return histogram

def Get_Gray_Hist_Info(current_image):
    cvm_img = np.asarray(current_image[:,:])
    gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
    current_histogram=cv2.calcHist([gray],[0],None,[256],[0,256])
    return current_histogram


if __name__ == '__main__':

    
    #use to determine if two images are from the same location
    similarity_value_threshold = .99
    
    #use to determine if the camera has moved over a given amount of time
    variance_value_threshold = 50000
    
    #set home many past frames to check for camera movement 
    number_of_frames_to_check =10
    
    #a list to store how much the camera frames change over time
    frame_difference_list = [float(0.0)]*number_of_frames_to_check
    
    # a counter for saved image file names
    number_of_saved_images = 0  
    
    #the the histograms used for calculation
    #movement and position to zero
    previous_histogram = Make_Zero_Hist()
    current_histogram = Make_Zero_Hist()
    saved_image_histogram = Make_Zero_Hist()
    
    
    previous_color_histogram = [Make_Zero_Hist(),Make_Zero_Hist(),Make_Zero_Hist()]
    current_color_histogram = [Make_Zero_Hist(),Make_Zero_Hist(),Make_Zero_Hist()]
    saved_image_color_historgram= [Make_Zero_Hist(),Make_Zero_Hist(),Make_Zero_Hist()]
    
    pkl_file = open('../classifier/svm_classifier.pkl','rb')
    
    clf = pickle.load(pkl_file)
    
    stationary_counter = 0
    #initialize the camera
    capture = cv.CaptureFromCAM(0)
    
    #initialize the camera and histogram windows
    cv.NamedWindow("camera", 1)
    cv.NamedWindow("live histogram",1)
    cv.NamedWindow("saved image histogram",1)
    
    while True:
        
        current_image = cv.QueryFrame(capture) #get current image from usb camera
           
        if current_image is not None:
            
            previous_color_histogram =current_color_histogram
            
            current_color_histogram=Get_Color_Hist(current_image)
            measurement = []
            for channel in range(0,3):
                
                correl_value = cv2.compareHist(previous_color_histogram[channel],current_color_histogram[channel],method=cv.CV_COMP_CORREL)
                measurement.append(correl_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[0],correl_value))
                #c.execute("""INSERT INTO corrilation value VALUES ({0:f});""".format(correl_value))
                #chi_sqr_value=cv2.compareHist(previous_color_histogram[channel],current_color_histogram[channel],method=cv.CV_COMP_CHISQR)
                #measurement.append(chi_sqr_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[1],chi_sqr_value))
                
                intersect_value =cv2.compareHist(previous_color_histogram[channel],current_color_histogram[channel],method=cv.CV_COMP_INTERSECT)
                measurement.append(intersect_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[2],intersect_value))
                
                bhatta_value= cv2.compareHist(previous_color_histogram[channel],current_color_histogram[channel],method=cv.CV_COMP_BHATTACHARYYA)
                measurement.append(bhatta_value)
                
                
            if clf.predict(measurement)==1:
                #print 'moving'
                stationary_counter=0
            else:
                #print 'stationary'
                stationary_counter=stationary_counter+1
            
            moving =stationary_counter<5
            

            previous_histogram=current_histogram

            current_histogram=Get_Gray_Hist_Info(current_image)
            # Calculate if the camera is in the same position by comparing how similar the current pixel values are
            # to the last saved image.  
            #similarity_value = cv2.compareHist(saved_image_histogram,current_histogram,method=cv.CV_COMP_CORREL)
            
            measurement = []
            for channel in range(0,3):
                
                correl_value = cv2.compareHist(saved_image_color_historgram[channel],current_color_histogram[channel],method=cv.CV_COMP_CORREL)
                measurement.append(correl_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[0],correl_value))
                #c.execute("""INSERT INTO corrilation value VALUES ({0:f});""".format(correl_value))
                #chi_sqr_value=cv2.compareHist(previous_color_histogram[channel],current_color_histogram[channel],method=cv.CV_COMP_CHISQR)
                #measurement.append(chi_sqr_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[1],chi_sqr_value))
                
                intersect_value =cv2.compareHist(saved_image_color_historgram[channel],current_color_histogram[channel],method=cv.CV_COMP_INTERSECT)
                measurement.append(intersect_value)
                #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[2],intersect_value))
                
                bhatta_value= cv2.compareHist(saved_image_color_historgram[channel],current_color_histogram[channel],method=cv.CV_COMP_BHATTACHARYYA)
                measurement.append(bhatta_value)
                
                
            if clf.predict(measurement)==1:
                #print 'moving'
                same_position=False
            else:
                #print 'stationary'
                same_position=True
            
            #same_position = similarity_value > similarity_value_threshold

            
            
            
            # if the camera is not in the same position and is not moving then save the current image
            # and update the saved_image_histogram. 
            save_current_image =  ((same_position == False) and (moving == False))

            if save_current_image:
                
                saved_image_histogram = current_histogram
                saved_image_color_historgram = current_color_histogram
                #Right now every image is written immediately to the hard drive.  This might cause
                #loss in performance if images are saved to quickly.  To avoid
                #this the current image should be cloned and saved to a list buffer stored in RAM memory, then 
                #cloned images be written to the hard drive when the cpu is not being overused.    
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))
                cv.SaveImage(save_file_name,current_image)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1




            #show the current image, it's histogram, as well as the histogram of the last saved image.
            saved_curve = Generate_Histogram_Curve(saved_image_histogram)
            cv2.imshow('saved image histogram',saved_curve)
            
            current_curve = Generate_Histogram_Curve(current_histogram)  
            cv2.imshow('live histogram',current_curve)
        
            cv.ShowImage("camera", current_image) 
 

        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/final_image.png",current_image)
            break
    
    
    cv.DestroyAllWindows()
