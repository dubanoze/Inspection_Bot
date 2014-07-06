#!/usr/bin/python
# -*- coding: utf-8 -*-

import sqlite3 as lite
import sys
from sklearn import svm
import pickle


con = lite.connect('../Camera/svm_data.db')


# svm classifier for one channel seems to do better than all 3, interesting. 
with con:    
    svm_classifier_data = []
    cur = con.cursor()    
    
    #'corrilation','chi','hist_intersect', 'bhatta'
    cur.execute("SELECT correl,inter, bhatta FROM moving_camera_data_0")
    rows_0 = cur.fetchall()


    cur.execute("SELECT correl,inter, bhatta FROM moving_camera_data_1")
    rows_1 = cur.fetchall()


    cur.execute("SELECT correl,inter, bhatta FROM moving_camera_data_2")
    rows_2 = cur.fetchall()
    
    
    print len(rows_0)
    print len(rows_1)
    print len(rows_2)
    
    lables = []
    for i in range(0,len(rows_0)):
        trial_data = rows_0[i] + rows_1[i] +rows_2[i]
        svm_classifier_data.append(trial_data)
        #print trial_data
        lables.append(1)
        
        
    
    cur = con.cursor()    
    cur.execute("SELECT correl,inter, bhatta FROM stationary_camera_data_0")
    rows_0 = cur.fetchall()


    cur.execute("SELECT correl,inter, bhatta FROM stationary_camera_data_1")
    rows_1 = cur.fetchall()


    cur.execute("SELECT correl,inter, bhatta FROM stationary_camera_data_2")
    rows_2 = cur.fetchall()
    
    
    print len(rows_0)
    print len(rows_1)
    print len(rows_2)
    
    #s_lables = []
    for i in range(0,len(rows_0)):
        trial_data = rows_0[i] + rows_1[i] +rows_2[i]
        svm_classifier_data.append(trial_data)
        lables.append(0)
        #print trial_data
    
    clf = svm.SVC(kernel='poly')  # polynomial seems to do better think its because of how intersetion explodes
    #clf.kernel(kernel='rbf')
    clf.fit(svm_classifier_data, lables)
    file_pointer = open("svm_classifier.pkl", 'wb+')
    pickle.dump(clf,file_pointer)
    file_pointer.close()
    
    #for row in svm_classifier_data:
    #    print row
    #for row in rows_0:
    #    print row