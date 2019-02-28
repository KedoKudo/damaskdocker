#!/bin/bash

echo "Build PTESC from scratch (for Mac OS)"
echo "-----"
echo "note:"
echo "  require customized HDF5      (run '>> ./install_HDF5.sh   ')"
echo "  require open-mpi from hombrew(run '>> brew install openmpi')"
echo "  require cmake    from hombrew(run '>> brew install cmake  ')"
echo "  use system python (2.7) for the configure step"
echo

PREFIX=/opt
VERSION=3.10.3
URL=http://ftp.mcs.anl.gov/pub/petsc/release-snapshots
SRCARCHIVE=petsc-lite-${VERSION}.tar.gz
SRCDIR=petsc-${VERSION}

[[ -f $SRCARCHIVE ]] && rm -rf $SRCARCHIVE 2>/dev/null
wget $URL/$SRCARCHIVE
tar  xvzf $SRCARCHIVE
cd   $SRCDIR

unset PETSC_DIR
unset PETSC_ARCH

./configure \
--prefix=${PREFIX}/petsc/${VERSION} \
--with-cc=mpicc --with-cxx=mpicxx --with-fc=mpif90 \
--download-fftw \
--with-hdf5-dir=/opt/hdf5/latest \
--download-fblaslapack \
--download-seacas \
--download-scalapack \
--download-hypre \
--download-metis \
--download-parmetis \
--download-triangle \
--download-ml \
--download-mumps \
--download-zlib \
--download-pnetcdf \
--download-netcdf \
--download-suitesparse \
--download-superlu \
--download-superlu_dist \
--with-cxx-dialect=C++11 \
--with-c2html=0 \
--with-debugging=0 \
--with-ssl=0 \
--with-x=0 \
COPTFLAGS="-O3 -xHost" \
CXXOPTFLAGS="-O3 -xHost" \
FOPTFLAGS="-O3 -xHost"

make PETSC_DIR=$(pwd) PETSC_ARCH=arch-linux2-c-opt all
make PETSC_DIR=$(pwd) PETSC_ARCH=arch-linux2-c-opt install
make PETSC_DIR=$(pwd) PETSC_ARCH=arch-linux2-c-opt test

cd ${PREFIX}/petsc
ln -s ${VERSION} latest

echo "export your PETSC_DIR to /opt/petsc/latest"
