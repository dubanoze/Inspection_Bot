Inspection_Bot
==============
Still in development...

A collection of Python modules that help collect and analyze image data for the optical inspection of PCB boards. This software is particularly useful for RepRap 3D printing hardware. 

Modules Include:
- Inspection Bot:  The main program that allows for control of both the usb microscope and RepRap printer.  It is currently set up to send coordinated commands to both the printer and camera.  Use this program to gather initial chip image data for future analysis. 
- Printer Communication: a module that alows for control of the RepRap printer through the Kiliment Printrun interface. 
- Camera:  Interfaces with a USB microscope that has replaced the plastic extruder of a 3D Printer.  The program detects whether the USB camera has moved to a new location and stopped moving long enough to obtain a clear photo.  Images are put in the “saved_images” directory. Note: The module acts independently of the software controlling the 3D printer.
- PCB_Information:  An XML parser that reads Eagle PCB board files and writes the electronic component locations to the ‘vectors.txt’ file.  To select the vectors to write to a file open Eagle and select only the component layers that are of interest, then save the PCB information to a new .brd file. 
- shortest_path: reads a list of (x,y) vectors and tries to find the shortest path / tour that visits all the vectors.  The tour is written to  ‘best found tour.txt’  file.  Important!  Program will show 3 plots to the user.  Close each one to finish the program .  
- gcode_generator:  reads a list of (x,y) vectors and writes them to a gcode file.  A pause function is put in between each vector the printer is told to travel to in order to give the camera.py module enough time to take a photo and write it to a file. 
- classifier:  Analyzes a stack of ‘good’ and ‘bad’ PCB board images and creates a classifier function to predict whether a board is defective or not. Classifier is not ready yet, but a demo of how the classification algorithm will work has been added to directory. 


Installation
---

#####Install OpenCV for Camera.py
```sh
sudo apt-get update
sudo apt-get install libopencv-dev
sudo apt-get install python-opencv
```

#####Install Skykit for classifier.py and find_shortest_path.py
```sh
sudo apt-get install build-essential python-dev python-numpy python-setuptools python-scipy 
sudo apt-get install python-matplotlib
sudo pip install -U scikit-learn
```
Note libatlas-dev libatlas3-base are recommended for Scikit but they don't seem to install properly.  Luckily they shouldn't be nessisary for running scikit function in inspection bot. 

#####See Eclipse Integration for how to set up a integrated development environment to run and edit inspection bot programs. 

Notes
---

- Make sure that camera setup has sufficient light.  Recommend using a incandescent light source until camera motion detection has been prefected. 
