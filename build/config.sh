#!/bin/bash -x
PREFIX=$DEVROOT/install/las
#CUDA_INC_PATH=$DEVROOT/install/cuda/9.1/include \
#CUDA_PATH=$DEVROOT/install/cuda/9.1/ \
  cmake .. \
  -DCMAKE_C_COMPILER=`which mpicc` \
  -DCMAKE_CXX_COMPILER=`which mpicxx` \
  -DCMAKE_Fortran_COMPILER=`which mpif90` \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
  -DSCOREC_DIR=$DEVROOT/install/core/lib/cmake/SCOREC/ \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DPETSC_DIR=$PETSC_DIR \
  -DPETSC_ARCH=$PETSC_ARCH \
  -DBUILD_SPARSKIT=ON \
  -DWITH_KOKKOS=FALSE

#  -DCUDA_TOOLKIT_ROOT_DIR=$DEVROOT/install/cuda/9.1/bin \
#  -DCUDA_CUDART_LIBRARY=$DEVROOT/install/cuda/9.1/lib64/libcudart_static.a

#  -DENABLE_SIMMETRIX=TRUE \
#  -DSCOREC_LIB_DIR=$DEVROOT/install/core/lib \
#  -DSCOREC_INCLUDE_DIR=$DEVROOT/install/core/include \
