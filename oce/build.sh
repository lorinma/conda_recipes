#!/bin/bash

mkdir build
cd build

# Configure step
cmake .. \
 -DBUILD_TESTING=OFF \
 -DCMAKE_BUILD_TYPE=Release \
 -DOCE_BUILD_SHARED_LIB=ON \
 -DOCE_DATAEXCHANGE=ON \
 -DOCE_DISABLE_X11=OFF \
 -DOCE_DRAW=ON \
 -DOCE_ENABLE_DEB_FLAG=OFF \
 -DOCE_INSTALL_PREFIX=$PREFIX \
 -DOCE_MULTITHREAD_LIBRARY=TBB \
 -DOCE_OCAF=ON \
 -DOCE_TESTING=OFF \
 -DOCE_USE_PCH=ON \
 -DOCE_USE_TCL_TEST_FRAMEWORK=OFF \
 -DOCE_VISUALISATION=ON \
 -DOCE_WITH_FREEIMAGE=ON \
 -DOCE_WITH_GL2PS=ON \
 -DOCE_WITH_OPENCL=OFF \
 -DOCE_WITH_VTK=OFF \
 -DCMAKE_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu \
 -DOPENGL_INCLUDE_DIR=/usr/include \
 -DOPENGL_gl_LIBRARY=/usr/lib/x86_64-linux-gnu/libGL.so \
 -DOPENGL_glu_LIBRARY=/usr/lib/x86_64-linux-gnu/libGLU.so

# Build step
make -j $CPU_COUNT

# Install step
make install

