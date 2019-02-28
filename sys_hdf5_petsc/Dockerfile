# Version: 0.0.2
FROM kedokudo/damaskdocker:sys_hdf5
MAINTAINER KedoKudo "chenzhang8722@gmail.com"

# ENV
ENV  REFRESHED_AT 2019-02-27
ENV  PETSC_DIR   /opt/petsc

# configure petsc
ADD ./install_petsc.sh /tmp/install_petsc.sh
WORKDIR "/tmp"
RUN wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.5.0.tar.gz
RUN chmod +x install_petsc.sh
RUN ./install_petsc.sh
