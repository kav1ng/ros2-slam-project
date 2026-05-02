########## ROS 2 SLAM Project (TurtleBot3) ##########

## Overview
This project demonstrates real-time Simultaneous Localization and Mapping (SLAM) using ROS 2 and TurtleBot3 in a Gazebo simulation environment.

## Technologies Used
- ROS 2 (Humble)
- Gazebo Simulator
- SLAM Toolbox
- RViz

## How It Works
- Robot publishes sensor data:
  - /scan (LiDAR)
  - /odom (odometry)
- SLAM Toolbox processes this data
- Generates an occupancy grid map in real-time

## How to Run
```bash
chmod +x scripts/run_slam.sh
./scripts/run_slam.sh

