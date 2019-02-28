#!/bin/bash

echo "Build HDF5 from scratch (for Mac OS)"
echo "-----"
echo "note:"
echo "  require open-mpi from hombrew(run '>> brew install openmpi')"
echo

PREFIX=/opt
VERSION=1.10.4

URL=http://www.hdfgroup.org/ftp/HDF5/releases/hdf5-1.10/hdf5-${VERSION}/src
SRCARCHIVE=hdf5-${VERSION}.tar.bz2
SRCDIR=hdf5-${VERSION}

[[ -f $SRCARCHIVE ]] && rm -rf $SRCARCHIVE 2>/dev/null

wget $URL/$SRCARCHIVE
tar xvjf $SRCARCHIVE
cd  $SRCDIR
./configure \
--prefix=${PREFIX}/hdf5/${VERSION} \
--enable-parallel \
--enable-fortran \
--enable-build-mode=production \
FC=mpif90 \
CC=mpicc

make && make install

cd ${PREFIX}/hdf5
ln -s ${VERSION} latest
