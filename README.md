bwi_spring_2013_visualOdometry
==============================
How to run it

First we have to make sure that the last version of fovis is installed in the ROS workspace. To do so you have to run the next command:

rosws set test2 --git https://github.com/srv/fovis.git

Then it’s necessary to install segbot_irris in the workspace.
Usually is good to make sure that our workspace is updated with the last version of each package, for doing that we type:

rosws update

Then all the necessary drivers must be run by using segbot_irris with the next command:

roslaunch segbot_navigation segbot_irris.launch

Now we can run fovis with the next command:

rosrun fovis mono_depth_odometer

If you want to see the features detected you may type the following:

rosrun image_view image_view image:=/mono_depth_odometer/features

Then to integrate the odometry information to the localization system you may use the next command:

roslaunch segbot_navigation amcl.launch odom_frame_id:=/mono_depth_odometer/odometry

Finally we run Rviz and show the information in the user interface adding the topic /mono_depth_odometer/odometry and particlecloud.

rosrun rviz rviz
