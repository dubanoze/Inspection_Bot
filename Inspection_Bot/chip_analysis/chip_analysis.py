import os
import cv2
import numpy as np
from matplotlib import pyplot as plt
import cv


def Get_Chip_Image_Path_List():
    chip_image_path_list=[]
    directory_storage_path = '../../Chip_Files/'
    directory_list = os.listdir(directory_storage_path)
    for directory in directory_list:
        chip_file_names = os.listdir(directory_storage_path+directory)
        #print chip_file_names
        for chip_file in chip_file_names:
            if chip_file == 'image_018.png':
                chip_image_path = directory_storage_path+directory+'/'+chip_file
                chip_image_path_list.append(chip_image_path)
    return chip_image_path_list
if __name__ == '__main__':
    
#lowerBound = cv.Scalar(120, 80, 100);
#upperBound = cv.Scalar(140, 85, 110);
    ORANGE_MIN = cv.Scalar(18, 40, 90)
    ORANGE_MAX = cv.Scalar(27, 255, 255)

    chip_image_path_list=Get_Chip_Image_Path_List()  
    print chip_image_path_list
    for chip_image_path in chip_image_path_list:
         if 'chip_0' in chip_image_path:
             img = cv2.imread(chip_image_path)
             img=img
             frame_threshed = cv.CreateImage(cv.GetSize(cv.fromarray(np.array(img[:,:,:]))), 8, 1)
             cv.InRangeS(img, ORANGE_MIN, ORANGE_MAX, frame_threshed)
             while True:
                 k = cv2.waitKey(0)&0xFF
                 cv2.imshow('image',frame_threshed)
                 if k==27:
                     break;
             
    #check if image is blurry using fourier transform
    
#     img = cv2.imread(chip_image_path_list[1])
#     img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
#     dft = cv2.dft(np.float32(img),flags = cv2.DFT_COMPLEX_OUTPUT)
#     dft_shift = np.fft.fftshift(dft)
#     
#     magnitude_spectrum = 20*np.log(cv2.magnitude(dft_shift[:,:,0],dft_shift[:,:,1]))
#     
#     plt.subplot(121),plt.imshow(img, cmap = 'gray')
#     plt.title('Input Image'), plt.xticks([]), plt.yticks([])
#     plt.subplot(122),plt.imshow(magnitude_spectrum, cmap = 'gray')
#     plt.title('Magnitude Spectrum'), plt.xticks([]), plt.yticks([])
#     plt.show()   
#         


# import cv
# 
# in_image = 'kaffee.png'
# out_image = 'kaffee_out.png'
# out_image_thr = 'kaffee_thr.png'
# 
# ORANGE_MIN = cv.Scalar(18, 40, 90)
# ORANGE_MAX = cv.Scalar(27, 255, 255)
# COLOR_MIN = ORANGE_MIN
# COLOR_MAX = ORANGE_MAX
# 
# def test1():
#     frame = cv.LoadImage(in_image)
#     frameHSV = cv.CreateImage(cv.GetSize(frame), 8, 3)
#     cv.CvtColor(frame, frameHSV, cv.CV_RGB2HSV)
#     frame_threshed = cv.CreateImage(cv.GetSize(frameHSV), 8, 1)
#     cv.InRangeS(frameHSV, COLOR_MIN, COLOR_MAX, frame_threshed)
#     cv.SaveImage(out_image_thr, frame_threshed)
# test1()