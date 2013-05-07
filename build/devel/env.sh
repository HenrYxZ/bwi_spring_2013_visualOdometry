#!/usr/bin/env sh
# generated from catkin/cmake/templates/env.sh.in

if [ $# -eq 0 ] ; then
  /bin/echo "Entering environment at '/home/fri/ros/rosbuild_ws/segbot/segbot_bringup/build/devel', type 'exit' to leave"
  . "/home/fri/ros/rosbuild_ws/segbot/segbot_bringup/build/devel/setup.sh"
  "$SHELL" -i
  /bin/echo "Exiting environment at '/home/fri/ros/rosbuild_ws/segbot/segbot_bringup/build/devel'"
else
  . "/home/fri/ros/rosbuild_ws/segbot/segbot_bringup/build/devel/setup.sh"
  exec "$@"
fi
