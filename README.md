# sboter4u
Scorbot ER4U ROS configuration files

This package contains Scorbot ER4U robot configuration using Moveit!

This package works with the communication between two systems-
1. Installed ROS-Indigo system With  Moveit! in Ubuntu OS(or any other fully ROS supported system)
2. Matlab 2015a or above(with ROS support) in Windows 32bit system

ROS system is where we can plan and execute trajectories performed using Moveit!
Windows system is necessary as the drivers came along with Scorbot ER4U works only in it. Thus we also need to install Matlab in it, so that we can communicate with real robot.

install packages as per this sequence-
1. Install MTIS toolbox(all instructions are in the package)
2. Install/Copy-paste ROS Packages in your catkin workspace
3. build packages using catkin_make
4. add Environment variables in ./bash.rc
5. confirm Environment variables in Matlab node(may not need)

Running sequence -
1. switch on robot and connect it to Windows system
2. execute roslaunch sboter4u_config_gen demo.launch(on Linux System)
3. execute Matlab Node binary(or program)(on windows system)
4. confirm robot has moved to Home position and same is displayed in RViz Window
5. Done
