# mir_ros_py27/py35 

`mir_ros` is an environment for the Robotic Operating Systems (ROS) modules at the Mobile Intelligent Robotics (MIR) Lab. Two environments are prepared: Python 2.7 and Python 3.5.

## Contributor

- Jaerock Kwon, Ph.D. Associate Professor at Kettering University

## Configure and Manage ROS Environment with Anaconda

Anaconda is a package/environment management system for installing multiple version of software packages.

### Overview

This document consists of the followings.
- Install Anaconda
- Setup the `mir_ros` environment
- Using Anaconda

### Install Anaconda

Install Anaconda from [Anaconda Distribuiton](https://www.anaconda.com/distribution/)

### Setup `mir_ros` Environment

Setup the `mir_ros` environment.
```
$ git clone https://github.com/jrkwon/mir_ros.git
$ cd mir_ros
```
Create the `mir_ros` environment.

#### Python 2.7
```
$ conda env create -f environment_py27.yml
```

**NOTE**: When this command fails due to the Internet issue, remove the partially built environment and re-create the environment.
```
$ conda env remove -n mir_ros_py27
$ conda env create -f environment_py27.yml
```
#### Python 3.5
```
$ conda env create -f environment_py35.yml
```

**NOTE**: The issues of some packages in Python 3 are known. This can be resolved by recompiling ROS packages.


### Using `mir_ros_py27/py35`
```
$ conda activate mir_ros
```
Then you will see a new prompt as below.
```
(mir_ros_py27) $
```

### Uninstall `mir_ros_py27/py35`

If you want to delete the environment, use the following command.
```
$ conda env remove -n mir_ros_py27
```



 
