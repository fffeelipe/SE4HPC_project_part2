#!/bin/bash

mkdir -p build && cd build
cmake ..
cmake --build .

source /etc/profile.d/modules.sh && module load mpi/openmpi-x86_64

