# clean up
sudo apt update --fix-missing
# configure ubuntu repo
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe restricted multiverse"
# setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# setup keys
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
# install ros full package
sudo apt update
sudo apt install -y ros-kinetic-desktop-full
# init rosdep
sudo rosdep init
rosdep update
# install additional controllers for vehicles and gazebo
sudo apt install -y ros-kinetic-controller-manager
sudo apt install -y ros-kinetic-gazebo-ros-control
sudo apt install -y ros-kinetic-position-controllers
sudo apt install -y ros-kinetic-velocity-controllers 
sudo apt install -y ros-kinetic-velodyne-pointcloud
# env setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
# install building packages
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

