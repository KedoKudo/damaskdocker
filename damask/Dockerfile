# Version: 0.0.2
FROM kedokudo/damaskdocker:sys_hdf5_petsc
MAINTAINER KedoKudo "chenzhang8722@gmail.com"

# ENV
ENV  REFRESHED_AT 2019-02-27
ENV  DAMASK_ROOT /home/damask
ENV  PETSC_DIR   /opt/petsc/latest
ENV  HDF5_DIR    /opt/hdf5/latest
WORKDIR "/home"

# configure damask
# RUN wget https://damask.mpie.de/pub/Download/Current/DAMASK-2.0.2.tar.xz
COPY DAMASK-development.tar.gz DAMASK.tar.gz
RUN  tar -xzvf DAMASK.tar.gz && mv DAMASK-development DAMASK
WORKDIR "/home/DAMASK"
RUN ["/bin/bash", "-c", "echo '. /home/DAMASK/env/DAMASK.sh' >> /root/.bashrc"]
