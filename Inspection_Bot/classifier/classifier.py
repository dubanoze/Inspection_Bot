from sklearn import svm
import cv2
import os
import cv
import numpy as np
import random
import time
#a simple svm classifier using 4 images to train and one to test
# uses the grayscale histogram of the entire image but better feature selection to be added later. 


negative_image_dir = './samples/background/'
positive_image_dir = './samples/parts/'
unknown_image_dir = './samples/unknown/'
def get_pixel_list(image_path):
    pixels = []
    img = cv2.imread(image_path)
    #print img[1,1]
    #img = np.asarray(img[:,:,:])
    height, width, depth = img.shape
    for i in range(0, height):
        for j in range(0, width):
            pixel_value = img[ i, j]
            # Since OpenCV loads color images in BGR, not RGB
            b = pixel_value[0]
            g = pixel_value[1]
            r = pixel_value[2]
            pixels.append([b,g,r])
    return pixels


if __name__ == '__main__':
    negative_file_names = os.listdir(negative_image_dir)
    positive_file_names = os.listdir(positive_image_dir)
    
    #postive_file_paths =positive_image_dir+positive_file_names
    
    negative_pixels = []
    for files in negative_file_names:
        print files
        negative_pixels=negative_pixels+get_pixel_list(negative_image_dir+files)
    
    
    positive_pixels = []
    for files in positive_file_names:
        print files
        positive_pixels=positive_pixels+get_pixel_list(positive_image_dir+files)
        
        
    start_time = time.time()
    sample_size = 10000
    negative_pixels=random.sample(negative_pixels, sample_size)
    positive_pixels=random.sample(positive_pixels, sample_size)
    
    false_lables = [int(0)]*len(negative_pixels)
    true_lables = [int(1)]*len(positive_pixels)
    
    
    
    X = negative_pixels+positive_pixels
    y = false_lables +true_lables
    print len(y)
    clf = svm.SVC(kernel ='rbf' ,cache_size=1000)
    #clf = svm.SVC(cache_size=1000)
    print 'start'
    clf.fit(X, y)
    print 'finish'
    elapsed_time = time.time() - start_time
    
    print elapsed_time
    
    
    
    unknown_file_list =os.listdir( unknown_image_dir)
    
    unknown_file_name = unknown_file_list[0]
    
    unknown_file_path = unknown_image_dir+unknown_file_name
    
    img = cv2.imread(unknown_file_path)
    #print unknown_file_path
    #print img[1,1]
    #img = np.asarray(img[:,:,:])
    
    #cv.mSet(mat, row, col, value)
    
    start_time = time.time()
    height, width, depth = img.shape
    
    print(type(img))
    #frameMat=cv.GetMat(img)
    #size = height, width, 1
    #matrix = np.ones(size, dtype=np.uint8)
    prediction_time = 0
    pixel_value = img[ 0, 0]
    b = pixel_value[0]
    print (type(b))
    for i in range(0, height):
        for j in range(0, width):
            pixel_value = img[ i, j]
            # Since OpenCV loads color images in BGR, not RGB
            b = pixel_value[0]
            g = pixel_value[1]
            r = pixel_value[2]
            prediction_start_time = time.time()
            predicted_pixel = clf.predict([b,g,r])
            prediction_time=prediction_time+time.time()-prediction_start_time
            if predicted_pixel==0:
                pixel_value[0]=0
                pixel_value[1]=0
                pixel_value[2]=0
    elapsed_time = time.time() - start_time
    
    print 'predicted start time ' + str(prediction_time)
    
    print elapsed_time
                #img[ i, j]=(0,0,0)
           #pixels.append((b,g,r))
           
           
    
    while True:
        cv2.imshow('image',img)
        if cv.WaitKey(10) == 27:
            break
    cv.DestroyAllWindows()
    #return pixels
    
    
    
    
#     X = [good_image_1_hist, good_image_2_hist,bad_image_1_hist,bad_image_2_hist]
#     y = [good, good,bad,bad]
#     
#     clf.fit(X, y)
#     prediction = clf.predict([unknown_image_hist])
#     
#     if prediction == good:
#         print "image is predicted to be good"
#     else:
#         print "image is predicted to be bad"