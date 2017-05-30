from picamera import PiCamera
from time import sleep

camera = PiCamera()

camera.start_preview()
for i in range(5):
    camera.start_recording('/home/pi/video%s.h264.mp4' % i)
    sleep(60)
    ceamera.stop_recording()
camera.stop_preview()
