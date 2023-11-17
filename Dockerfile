FROM ros:humble-ros-base

# install vim
RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    && rm -rf /var/lib/apt/lists*

# source ros2
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
RUN echo "source /root/colcon_ws/install/setup.bash" >> ~/.bashrc

# specify the workspace
WORKDIR /root/colcon_ws
