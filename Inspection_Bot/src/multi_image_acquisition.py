#!/usr/bin/python


import multiprocessing
import cv2

queue_from_cam = multiprocessing.Queue()

def cam_loop(queue_from_cam):
    print 'initializing cam'
    cap = cv2.VideoCapture(0)
    print 'querying frame'
    hello, img = cap.read()
    print 'queueing image'
    queue_from_cam.put(img)
    print 'cam_loop done'

def snap_image(position):

	cam_process = multiprocessing.Process(target=cam_loop,args=(queue_from_cam,))
	cam_process.start()
	
	print 'getting image'
	from_queue = queue_from_cam.get()
	print 'saving image'
	cv2.imwrite("../saved_images/temp%s.png" % position, from_queue)
	print 'image saved'
	cam_process.join()


position = 1

snap_image(position)
position += 1


snap_image(position)
position += 1

