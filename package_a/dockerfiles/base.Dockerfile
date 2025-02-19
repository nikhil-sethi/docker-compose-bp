FROM ros:humble-ros-base-jammy AS stage

RUN apt-get update \
    && rm -rf /var/lib/apt/lists/*