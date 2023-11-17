FROM ros:humble-ros-base

# install vim
RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    && rm -rf /var/lib/apt/lists*

# create the workspace
WORKDIR /root/colcon_ws
