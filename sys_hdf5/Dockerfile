# Version: 0.0.2
FROM kedokudo/damaskdocker:sys
MAINTAINER KedoKudo "chenzhang8722@gmail.com"

# ENV
ENV  REFRESHED_AT 2019-02-27
ENV  HDF5_DIR     /opt/hdf5/latest
ENV  PETSC_DIR    /opt/petsc/latest

# configure HDF5-1.10.4
ADD ./install_HDF5.sh  /tmp/install_HDF5.sh
WORKDIR "/tmp"
RUN chmod +x install_HDF5.sh
RUN ./install_HDF5.sh
