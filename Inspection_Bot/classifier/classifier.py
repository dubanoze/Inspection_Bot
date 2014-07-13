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
    sample_size = 1000
    negative_pixels=random.sample(negative_pixels, sample_size)
    positive_pixels=random.sample(positive_pixels, sample_size)
    
    false_lables = [int(0)]*len(negative_pixels)
    true_lables = [int(1)]*len(positive_pixels)
    
    
    
    X = negative_pixels+positive_pixels
    y = false_lables +true_lables
    print len(y)
    #clf = svm.SVC(kernel ='rbf' ,cache_size=1000)
    clf = svm.SVC(cache_size=1000)
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
    
    #start_time = time.time()
    height, width, depth = img.shape
    mask = np.zeros((height+2, width+2), np.uint8)
    seed_pt = None
    fixed_range = True
    connectivity = 4    
    flags = connectivity
    if fixed_range:
        flags |= cv2.FLOODFILL_FIXED_RANGE
    cv2.imshow('floodfill', img)
    flooded = img.copy()
    hi = 20
    lo = 20 
    start = time.time()
    for i in range(0,1000):
        j=random.randrange(117, 390)
        i=random.randrange(261, 427)
        seed_pt = i, j
        pixel_value = flooded[seed_pt]
        # Since OpenCV loads color images in BGR, not RGB
        b = pixel_value[0]
        g = pixel_value[1]
        r = pixel_value[2]
        predicted_pixel = clf.predict([b,g,r])
        if predicted_pixel==0:
            cv2.floodFill(flooded, mask, seed_pt, (0, 0, 0), (lo,)*3, (hi,)*3, flags)
        elif predicted_pixel==1:
            cv2.floodFill(flooded, mask, seed_pt, (255, 255, 255), (lo,)*3, (hi,)*3, flags)
        cv2.circle(flooded, seed_pt, 2, (0, 0, 255), -1)
    cv2.imshow('floodfill', flooded)
    elapsed_time = time.time()-start
    print elapsed_time
           
           
    
    while True:
        #cv2.imshow('image',img)
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