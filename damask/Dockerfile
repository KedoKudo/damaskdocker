# Version: 0.0.2
FROM kedokudo/damaskdocker:sys_hdf5_petsc
MAINTAINER KedoKudo "chenzhang8722@gmail.com"

# ENV
ENV  REFRESHED_AT 2019-05-10
ENV  DAMASK_ROOT /home/DAMASK
ENV  PYTHONPATH  /home/DAMASK/python
ENV  PETSC_DIR   /opt/petsc/latest
ENV  HDF5_DIR    /opt/hdf5/latest
SHELL ["/bin/bash", "-c"]
WORKDIR "/home"

# configure damask
RUN wget https://damask.mpie.de/pub/Download/Current/damask-2.0.3.tar.xz
# COPY DAMASK-development.tar.gz DAMASK.tar.gz
RUN tar -xJvf damask-2.0.3.tar.xz && mv damask-2.0.3 DAMASK
WORKDIR "/home/DAMASK"
RUN yes | pip3 install numpy scipy pillow vtk h5py
RUN echo 'alias python=python3' >> /root/.bashrc
RUN echo 'alias pip=pip3' >> /root/.bashrc
RUN ["/bin/bash", "-c", "echo '. /home/DAMASK/env/DAMASK.sh' >> /root/.bashrc"]
RUN source /home/DAMASK/env/DAMASK.sh
RUN make spectral
RUN make processing
