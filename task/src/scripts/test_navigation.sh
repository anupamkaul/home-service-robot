#!/bin/sh

# setup up search directories (replace with /home/workspace/catkin_ws on standard build)
catkin_dir=/home/anupam/home-service-robot/task
catkin_src_dir=$catkin_dir/src

xterm -e "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &  # default is anupam.world
sleep 10 

xterm -e "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$catkin_src_dir/my_robot/maps/map.yaml" & 
sleep 8

xterm -e "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &


