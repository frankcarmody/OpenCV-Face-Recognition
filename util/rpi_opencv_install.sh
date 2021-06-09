sudo apt -y purge wolfram-engine
sudo apt -y purge libreoffice*
sudo apt -y clean
sudo aptt -y autoremove

sudo apt update
sudo apt upgrade

#This command will install the packages that contain the tools needed to compile the OpenCV code.
sudo apt -y install cmake build-essential pkg-config git

sudo apt -y install libjpeg-dev libtiff-dev libjasper-dev libpng-dev libwebp-dev libopenexr-dev
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libdc1394-22-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
sudo apt -y install libgtk-3-dev libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5

sudo apt -y install libatlas-base-dev liblapacke-dev gfortran
sudo apt -y install libhdf5-dev libhdf5-103
sudo apt -y install python3-dev python3-pip python3-numpy
