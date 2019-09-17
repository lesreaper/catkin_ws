#!/bin/sh

xterm -e "cd /home/workspace/catkin_ws/; source devel/setup.bash; cd src/turtlebot_simulator/turtlebot_gazebo/launch/; roslaunch turtlebot_world.launch" &
sleep 5
xterm -e "cd /home/workspace/catkin_ws/; source devel/setup.bash; cd src/turtlebot_interactions/turtlebot_rviz_launchers/launch; roslaunch view_navigation.launch" &
sleep 5
xterm -e "cd /home/workspace/catkin_ws/; source devel/setup.bash; cd src/turtlebot_simulator/turtlebot_gazebo/launch; roslaunch amcl_demo.launch" & 
sleep 5
xterm  -e  "cd /home/workspace/catkin_ws/; source devel/setup.bash; rosrun using_markers basic_shapes" & 
sleep 5
xterm -e "cd /home/workspace/catkin_ws/; source devel/setup.bash; rosrun add_markers add_markers" & 
xterm -e "cd /home/workspace/catkin_ws/; source devel/setup.bash; rosrun pick_objects pick_objects"