from sklearn import svm
import cv2

#a simple svm classifier using 4 images to train and one to test
# uses the grayscale histogram of the entire image but better feature selection to be added later. 
#Note: repeat svm test over time to decrease error rates.  Use probability perdiction base on accuracy rates. 
if __name__ == '__main__':
    good_image_1 =  cv2.imread("./samples/good-1.jpg")
    good_image_2 = cv2.imread("./samples/good-2.jpg")
    bad_image_1 = cv2.imread("./samples/bad-1.jpg")
    bad_image_2 = cv2.imread("./samples/bad-2.jpg")
    unknown_image = cv2.imread("./samples/unknown.jpg")
    
    bad = 0
    good = 1
    
    good_image_1_gray = cv2.cvtColor(good_image_1,cv2.COLOR_BGR2GRAY) # keep it simple for now 
    good_image_2_gray = cv2.cvtColor(good_image_2,cv2.COLOR_BGR2GRAY) # keep it simple for now 
    bad_image_1_gray = cv2.cvtColor(bad_image_1,cv2.COLOR_BGR2GRAY) # keep it simple for now 
    bad_image_2_gray = cv2.cvtColor(bad_image_2,cv2.COLOR_BGR2GRAY) # keep it simple for now 
    unknown_image_gray = cv2.cvtColor(unknown_image,cv2.COLOR_BGR2GRAY) # keep it simple for now 
    
    good_image_1_hist_object = cv2.calcHist([good_image_1_gray],[0],None,[256],[0,256])
    good_image_2_hist_object = cv2.calcHist([good_image_2_gray],[0],None,[256],[0,256])
    bad_image_1_hist_object = cv2.calcHist([bad_image_1_gray],[0],None,[256],[0,256])
    bad_image_2_hist_object = cv2.calcHist([bad_image_2_gray],[0],None,[256],[0,256])
    unknown_image_hist_object = cv2.calcHist([unknown_image_gray],[0],None,[256],[0,256])
    
    good_image_1_hist=[] # changing histogram data to something the svm can understand
    for i in good_image_1_hist_object:
        good_image_1_hist.append(i[0])
   # print good_image_1_hist
    
    good_image_2_hist=[] # changing histogram data to something the svm can understand
    for i in good_image_2_hist_object:
        good_image_2_hist.append(i[0])
    #print good_image_2_hist
    
    bad_image_1_hist=[] # changing histogram data to something the svm can understand
    for i in bad_image_1_hist_object:
        bad_image_1_hist.append(i[0])
    #print good_image_1_hist
    
    bad_image_2_hist=[] # changing histogram data to something the svm can understand
    for i in bad_image_2_hist_object:
        bad_image_2_hist.append(i[0])
        
    unknown_image_hist=[] # changing histogram data to something the svm can understand
    for i in unknown_image_hist_object:
        unknown_image_hist.append(i[0])
    #print good_image_1_hist
    
    
    
    X = [good_image_1_hist, good_image_2_hist,bad_image_1_hist,bad_image_2_hist]
    y = [good, good,bad,bad]
    clf = svm.SVC()
    clf.fit(X, y)
    prediction = clf.predict([unknown_image_hist])
    
    if prediction == good:
        print "image is predicted to be good"
    else:
        print "image is predicted to be bad"