#!/bin/bash

export TURTLEBOT3_MODEL=burger
source /opt/ros/humble/setup.bash

echo "Launching Gazebo..."
gnome-terminal -- bash -c "ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py; exec bash"

sleep 5

echo "Starting SLAM..."
gnome-terminal -- bash -c "ros2 launch slam_toolbox online_async_launch.py; exec bash"

sleep 5

echo "Opening RViz..."
gnome-terminal -- bash -c "rviz2; exec bash"

sleep 3

echo "Starting Teleop..."
gnome-terminal -- bash -c "ros2 run turtlebot3_teleop teleop_keyboard; exec bash"
