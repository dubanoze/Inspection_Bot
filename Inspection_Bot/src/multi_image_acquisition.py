#!/usr/bin/python


import multiprocessing
import cv
import Image
import pickle
import time

queue_from_cam = multiprocessing.Queue()

def cam_loop(queue_from_cam):
    print 'initializing cam'
    cam = cv.CaptureFromCAM(-1)
    print 'querying frame'
    img = cv.QueryFrame(cam)
    print 'converting image'
    pimg = img.tostring()
    print 'pickling image'
    pimg2 = pickle.dumps(pimg,-1)
    print 'queueing image'
    queue_from_cam.put([pimg2,cv.GetSize(img)])
    print 'cam_loop done'

def snap_image(position):
	cam_process = multiprocessing.Process(target=cam_loop,args=(queue_from_cam,))
	cam_process.start()
	print 'getting pickled image'
	from_queue = queue_from_cam.get()
	print 'unpickling image'
	pimg = pickle.loads(from_queue[0])
	print 'unconverting image'
	cv_im = cv.CreateImageHeader(from_queue[1], cv.IPL_DEPTH_8U, 3)
	cv.SetData(cv_im, pimg)
	print 'saving image'
	cv.SaveImage("../saved_images/temp%s.png" % position,cv_im)
	print 'image saved'
	cam_process.join()




position = 1

snap_image(position)
position += 1


snap_image(position)
position += 1

