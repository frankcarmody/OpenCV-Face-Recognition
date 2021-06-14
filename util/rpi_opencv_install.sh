#Clean up uneeded software on rPi
sudo apt -y purge wolfram-engine
sudo apt -y purge libreoffice*
sudo apt -y clean
sudo apt -y autoremove

#Update software on rPi
sudo apt update
sudo apt upgrade

#This command will install the packages that contain the tools needed to compile the OpenCV code.
sudo apt -y install cmake build-essential pkg-config git

sudo apt -y install libjpeg-dev libtiff-dev libjasper-dev libpng-dev libwebp-dev libopenexr-dev
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libdc1394-22-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
sudo apt -y install libgtk-3-dev libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5

sudo apt -y install libatlas-base-dev liblapacke-dev gfortran
sudo apt -y install libhdf5-dev libhdf5-103
sudo apt -y install arduino
sudo apt -y install  python3 python3-venv python3-pip python3-dev python3-numpy virtualenv




#This command will create directory, download , make and install OpenCV
mkdir ~/OpenCV
cd ~/OpenCV
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
mkdir ~/OpenCV/opencv/build
cd ~/OpenCV/opencv/build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=~/OpenCV/opencv_contrib/modules -D ENABLE_NEON=ON -D ENABLE_VFPV3=ON -D BUILD_TESTS=OFF -D INSTALL_PYTHON_EXAMPLES=OFF -D OPENCV_ENABLE_NONFREE=ON -D CMAKE_SHARED_LINKER_FLAGS=-latomic -D BUILD_EXAMPLES=OFF ..
make -j$(nproc)
sudo make install
sudo ldconfig
   
   
sudo pip3 install virtualenv
sudo -u pi pip3 install virtualenv
sudo -u pi virtualenv -p python3 /home/pi/Desktop/PiFaceVirtualEnv
source "/home/pi/Desktop/PiFaceVirtualEnv/bin/activate"
pip install numpy pillow pyserial
pip install --upgrade pip wheel setuptools
pip install opencv-contrib-python
deactivate

