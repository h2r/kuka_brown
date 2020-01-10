export KUKA_WS_PATH=~/kuka_ws/

source /opt/ros/kinetic/setup.bash
source $KUKA_WS_PATH/devel/setup.bash

#$(hostname -I)
export ROS_IP=138.16.161.135
export ROS_MASTER_URI=http://$ROS_IP:11311

source $KUKA_WS_PATH/src/kuka_brown/kuka_cam/kuka_cam.sh

function save_cam_images()
{
	rosrun image_view extract_images _sec_per_frame:=0.01 image:=/cam_$1/color/image_raw
}
