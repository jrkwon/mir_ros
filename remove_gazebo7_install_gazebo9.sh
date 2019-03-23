# uninstall gazebo7
sudo apt remove ros-kinetic-gazebo*
sudo apt remove libgazebo*
sudo apt remove gazebo*
sudo apt update

# install Gazebo 9
# prep for Gazebo 9 Installation
# setup your computer to accept software from packages.osrfoundation.org.
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

# setup keys
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

# install Gazebo 9 and Developer Packages
# first update the debian database:
sudo apt update

# next, install gazebo-9 and the packages for developers
sudo apt-get install gazebo9
sudo apt-get install libgazebo9-dev

# install gazebo9-ros-control
sudo apt install ros-kinetic-gazebo9-ros-control
