#!/usr/bin/python

import cv2.cv as cv
import time
import pickle

import cv2
import numpy as np

bins = np.arange(256).reshape(256,1)


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


if __name__ == '__main__':
    experiment_type = 2
    
    if experiment_type==1:
        trial_durration = 10 #seconds
        experiment_name = "stationary_camera_data"
    elif experiment_type==2:
        trial_durration = 100 #seconds
        experiment_name = "moving_camera_data"

    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    start_time = float('-Infinity')
    trail_data = []
    trial= 0
    img = cv.QueryFrame(capture)
    #number_of_channels = img.nChannels
    #print range(0,img.nChannels)
    while True:
        current_time = time.time()
        img = cv.QueryFrame(capture)
        cv.ShowImage("camera", img)
        
        #print hist
        
        if (current_time-start_time) < trial_durration:
            print "Current trial time is {0:.2f} of {1:.2f} Seconds".format(((current_time-start_time)),trial_durration)
            hist=Get_Color_Hist(img)
            trail_data.append(hist)
        
        
        k = cv2.waitKey(30)&0xFF
        if k == 27: #Esc key
            break
        elif k == ord('n'): # new trial
            start_time = current_time
            trial=trial+1
        elif k == ord('s'): #save current data
            if trail_data is not None:
                #file_name = experiment_name + "_trial_" + str(trial)+".pkl"
                print 'saving trial {0:d}'.format(trial)
                for i in range(0,img.nChannels): 
                    directory = experiment_name+'/channel_{0:d}/'.format(i)
                    file_name = str(trial)+'.pkl'
                    data_output = open(directory+file_name, 'wb+')
                    print "saving channel {0:d}".format(i)
                    all_channel_histograms=[]
                    for histograms in trail_data:
                        channel_histogram = histograms[i]
                        all_channel_histograms.append(channel_histogram)
                    pickle.dump(all_channel_histograms,data_output)
                    data_output.close()
            #hist=trail_data.pop()
            #print hist[0]
            trail_data = []
    cv.DestroyAllWindows()
