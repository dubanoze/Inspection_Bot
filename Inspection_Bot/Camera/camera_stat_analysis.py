from os import listdir
from os.path import isfile, join
import pprint, pickle
import cv2
import cv2.cv as cv
import numpy as np
import sqlite3 #https://wiki.python.org/moin/SQLite



if __name__ == '__main__':
    
    con = sqlite3.connect('svm_data.db')
    
    experiments = ["stationary_camera_data","moving_camera_data"]
    classifier_training_data = None
    #classifier_training_lables = []
    for experiment_type in experiments:
        
        con.execute("""CREATE TABLE {} (
               id INTEGER PRIMARY KEY AUTOINCREMENT,
               grp INTEGER)""".format(experiment_type))
        
        #experiment_name=experiment_type
        if experiments == "stationary_camera_data":
            classifier_value = 0
        else:
            classifier_value = 1
            

        onlyfiles= None
        print '****************\n'+experiment_type
        
        #experiment_classifier_values = []
        experiment_classifier_values = []
        channel_classifier_values=[]
        for i in range(0,3):
            print "\n channel {0:d} data".format(i)
            directory_path = experiment_type + "/channel_{0:d}/".format(i)
            
            onlyfiles = [ f for f in listdir(directory_path) if isfile(join(directory_path,f)) ]
            channel_data = []
            chi_sqr_list = []
            correl_list = []
            intersect_list =[]
            bhatta_list = []
            channel_classifier_values = []
            for file in onlyfiles:
                #print(directory_path+file)
                pkl_file = open(directory_path+file, 'rb')
                #for data1 in iter(lambda: pickle.load(pkl_file), ''):
                #channel_data.append(data1)
                data1 = pickle.load(pkl_file)
    
                channel_data =data1
    
                hist_1 = channel_data.pop()
                
                #data_points = 0
                
                for i in range(0,len(channel_data)):
                    #data_points=data_points+1
                    #classifier_values = []
                    hist_2=channel_data.pop()
                    
                    correl_value = cv2.compareHist(hist_1,hist_2,method=cv.CV_COMP_CORREL)
                    correl_list.append(correl_value)
                    
                    chi_sqr_value=cv2.compareHist(hist_1,hist_2,method=cv.CV_COMP_CHISQR)
                    chi_sqr_list.append(chi_sqr_value)
                    
                    intersect_value =cv2.compareHist(hist_1,hist_2,method=cv.CV_COMP_INTERSECT)
                    intersect_list.append(intersect_value)
                    
                    bhatta_value= cv2.compareHist(hist_1,hist_2,method=cv.CV_COMP_BHATTACHARYYA)
                    bhatta_list.append(bhatta_value)
                    
                    hist_1=hist_2
                    
                    #classifier_values.append(correl_value,chi_sqr_value,intersect_value,bhatta_value)
                    #hannel_classifier_values.append(classifier_values)
                pkl_file.close()
            correl_array = np.array(correl_list)
            chi_sqr_array=np.array(chi_sqr_list)
            intersect_sqr=np.array(intersect_list)
            bhatta_sqr=np.array(bhatta_list)
            print "corrilation measure: mean = {0:f} , standard deviation = {1:f}".format(np.mean(correl_array),np.std(correl_array))
            print "chi sqr measure: mean = {0:f} , standard deviation = {1:f}".format(np.mean(chi_sqr_array),np.std(chi_sqr_array))
            print "interection measure: mean = {0:f} , standard deviation = {1:f}".format(np.mean(intersect_sqr),np.std(intersect_sqr))
            print "bhatta measure: mean = {0:f} , standard deviation = {1:f}".format(np.mean(bhatta_sqr),np.std(bhatta_sqr))
            
            #classifier_values=np.array([correl_list,chi_sqr_list,intersect_list,bhatta_list])
            #channel_classifier_values.append(classifier_values)
            experiment_classifier_values.append(channel_classifier_values)
        
        #for ccv in experiment_classifier_values:
        #print(type(channel_classifier_values))
            #print np.std(correl_array)
            #break
        #break
            #data2 = pickle.load(pkl_file)
            #pprint.pprint(data2)
            #pkl_file.close()
        #print onlyfiles