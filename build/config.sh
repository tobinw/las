PREFIX=$DEVROOT/install/las

CC=$(which mpicc)
CXX=$(which mpicxx)
FORT=$(which mpif90)

cmake .. \
      -DCMAKE_CXX_COMPILER=$CXX \
      -DCMAKE_C_COMPILER=$CC \
      -DCMAKE_Fortran_COMPILER=$FORT \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
      -DSCOREC_LIB_DIR=$DEVROOT/install/core/lib \
      -DSCOREC_INCLUDE_DIR=$DEVROOT/install/core/include \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_INSTALL_PREFIX="$PREFIX" \
      -DPETSC_DIR=$PETSC_DIR \
      -DPETSC_ARCH=$PETSC_ARCH \
      -DBUILD_SPARSKIT=OFF
      #-DCUDA_CUDART_LIBRARY= #find_cuda has issues with this sometimes
