# OpenCV-Face-Recognition
Real-time face recognition project with OpenCV and Python<br>Review original tutorial before proceeding: [OpenCV-Face-Recognition](https://www.instructables.com/Real-time-Face-Recognition-an-End-to-end-Project/)



1. Physically connect Camera to Raspbery Pi
2. RaspberryMenu > Preferences > RaspberryPi Configuration> Interfaces set Camera to Enabled
3. Reboot
4. Increase swap file size to better handle low amount of  RAM. Change CONF_SWAPSIZE=100 to CONF_SWAPSIZE=2048. USe CTRL+X and then Y to save in nano.
``` 
sudo nano /etc/dphys-swapfile
```
5. Reload swpfile configuration
```
sudo systemctl restart dphys-swapfile
```
6. Download and unzip this respository https://github.com/frankcarmody/piFace
7. Move unzipped respository folder to Raspberry Pi Desktop
8. Open 'util' folder inside unzipped repository, right click on 'rpi_opencv_install.sh', click 'properties' and set permission to execute for anyone.
9. Right-Click on unzipped folder on desktop, open folder, right click on "util" folder and select "Open in terminal" from context menu.
10. Execute install script for in installing OpenCV.
```
./rpi_opencv_install.sh
```
9. Decrease swap file size. Change CONF_SWAPSIZE=2048 to CONF_SWAPSIZE=100. USe CTRL+X and then Y to save in nano.
``` 
sudo nano /etc/dphys-swapfile
```
11.  Reload swpfile configuration
```
sudo systemctl restart dphys-swapfile
```
12.  
13. Test Camera
```
python simpleCamTest.py
```
7. 
