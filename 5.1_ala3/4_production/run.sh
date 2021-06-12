#!/bin/bash

module load intel
export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=4
mpirun -np 4 spdyn INP1 > log1 2>&1
mpirun -np 4 spdyn INP2 > log2 2>&1
mpirun -np 4 spdyn INP3 > log3 2>&1

