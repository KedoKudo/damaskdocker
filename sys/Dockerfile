# Version: 0.0.1
FROM ubuntu:latest
MAINTAINER KedoKudo "chenzhang8722@gmail.com"

# ENV
ENV  REFRESHED_AT 2019-02-28

# Install necessary libraries from offical repo
RUN apt update  -y && apt upgrade -y
RUN apt install -y  build-essential git  \
					gfortran             \
					m4                   \
					python-pip python2.7 \
					python3-pip python3  \
                    wget bzip2 cmake vim \
                    openmpi-bin \
                    openmpi-doc \
                    libopenmpi-dev
