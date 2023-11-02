#!/bin/bash
FROM ubuntu:20.04
COPY eigen /orb_slam3/eigen
COPY Pangolin /orb_slam3/Pangolin
COPY ORB_SLAM3 /orb_slam3/orb_slam3
COPY install_prerequisites.sh /orb_slam3/
COPY install_eigen3_in_docker.sh /orb_slam3/
COPY install_pangolin_in_docker.sh /orb_slam3/
COPY install_orb_slam3_in_docker.sh /orb_slam3/
COPY install_orb_slam3_ros2_in_docker.sh /orb_slam3/
COPY install_ros2_in_docker.sh /orb_slam3/
COPY install_h264_in_docker.sh /orb_slam3/
COPY install_all.sh /orb_slam3/
COPY for_docker /orb_slam3/

RUN apt-get update && apt-get install -y sudo
