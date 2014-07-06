#!/usr/bin/python

import cv2.cv as cv
import cv2
import time 
import pickle
import numpy as np
from sklearn import svm

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
    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    
    previous_histogram = [Make_Zero_Hist(),Make_Zero_Hist(),Make_Zero_Hist()]
    current_histogram = [Make_Zero_Hist(),Make_Zero_Hist(),Make_Zero_Hist()]
    
    pkl_file = open('../classifier/svm_classifier.pkl','rb')
    
    clf = pickle.load(pkl_file)
    
    while True:
        img = cv.QueryFrame(capture)
        
        
        previous_histogram =current_histogram
        
        current_histogram=Get_Color_Hist(img)
        measurement = []
        for channel in range(0,3):
            
            correl_value = cv2.compareHist(previous_histogram[channel],current_histogram[channel],method=cv.CV_COMP_CORREL)
            measurement.append(correl_value)
            #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[0],correl_value))
            #c.execute("""INSERT INTO corrilation value VALUES ({0:f});""".format(correl_value))
            #chi_sqr_value=cv2.compareHist(previous_histogram[channel],current_histogram[channel],method=cv.CV_COMP_CHISQR)
            #measurement.append(chi_sqr_value)
            #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[1],chi_sqr_value))
            
            intersect_value =cv2.compareHist(previous_histogram[channel],current_histogram[channel],method=cv.CV_COMP_INTERSECT)
            measurement.append(intersect_value)
            #cursor.execute("""INSERT INTO {0:} (measurement) VALUES ({1:f});""".format(measurement_list[2],intersect_value))
            
            bhatta_value= cv2.compareHist(previous_histogram[channel],current_histogram[channel],method=cv.CV_COMP_BHATTACHARYYA)
            measurement.append(bhatta_value)
            
            
        if clf.predict(measurement)==1:
            print 'moving'
        else:
            print 'stationary'
        
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27:
            break
    cv.DestroyAllWindows()

