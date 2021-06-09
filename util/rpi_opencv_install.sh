echo "Maintain and update the distro"
sudo apt-get -y update
sudo apt-get -y upgrade
sudo rpi-update -y

echo "Install developer tools"
sudo apt-get install -y build-essential cmake pkg-config

echo "Install image I/O packages"
sudo apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev

echo "Install GTK development library"
sudo apt-get install -y libgtk2.0-dev

echo "Install video I/O packages"
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

echo "Install extra packages"
sudo apt-get install -y libatlas-base-dev gfortran

echo "Install pip"
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper

echo "Install Python development tools"
sudo apt-get install -y python2.7-dev

echo "Install Python packages"
pip install numpy

echo "Downloadg OpenCV source"
wget -O opencv-2.4.11.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.11/opencv-2.4.11.zip/download
unzip opencv-2.4.11.zip
cd opencv-2.4.11
mkdir build
cd build

echo "Compile OpenCV"
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON  -D BUILD_EXAMPLES=ON ..
make

echo "Install OpenCV"
sudo make install
sudo ldconfig

echo "Symlink OpenCV within virtual environment"
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
ln -s /usr/local/lib/python2.7/site-packages/cv.py cv.py

echo "Updating user environment"
cat >~/.bashrc << EOF
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=~/python_envs
source /usr/local/bin/virtualenvwrapper.sh
EOF

source ~/.bashrc