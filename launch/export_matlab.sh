#!/bin/bash

mkdir $(date +%F--%T) && cd $(date +%F--%T)
rostopic echo /mavros/imu/data > mavros.txt &             
rostopic echo /stereo_odometer/odometry > viso.txt &
rostopic echo /cmd_vel_stamped > cmd_vel.txt &
rostopic echo /imu/filter/data > mavros_filter.txt & 
