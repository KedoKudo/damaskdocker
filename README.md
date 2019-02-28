# damaskdocker

Docker builder for [DAMASK spectral sovler](https://cloud.docker.com/repository/docker/kedokudo/damaskdocker/general).

```bash
damaskdocker
├── LICENSE
├── README.md
├── damask                              # runtime damask, use make spectral to build the spectral solver
│   ├── DAMASK-development.tar.gz
│   └── Dockerfile
├── sys                                 # build image for base system (ubuntu)
│   └── Dockerfile
├── sys_hdf5                            # build image for HDF5-1.10.4
│   ├── Dockerfile
│   └── install_HDF5.sh
└── sys_hdf5_petsc                      # build image for PETSC-3.10.3
    ├── Dockerfile
    └── install_petsc.sh
```
