# OpenCV-Face-Recognition
Real-time face recognition project with OpenCV and Python<br>Review original tutorial before proceeding: [OpenCV-Face-Recognition](https://www.instructables.com/Real-time-Face-Recognition-an-End-to-end-Project/)



1. Physically connect Camera to Raspbery Pi
2. RaspberryMenu > Preferences > RaspberryPi Configuration> Interfaces set Camera to Enabled
3. Reboot
6. Download and unzip this respository https://github.com/frankcarmody/piFace
4. Move unzipped respository folder to Raspberry Pi Desktop
5. Open 'util' folder inside unzipped repository, right click on 'rpi_opencv_install.sh', click 'properties' and set permission to execute for anyone.
6. Right-Click on unzipped folder on desktop, open folder, right click on "util" folder and select "Open in terminal" from context menu.
7. Execute install script for in installing OpenCV.
```
./rpi_opencv_install.sh
```
9. Test Camera
```
python simpleCamTest.py
```
7. 
