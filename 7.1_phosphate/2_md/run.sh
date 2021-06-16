#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=4
mpirun -np 4 spdyn mini.inp  > mini.log  2>&1
mpirun -np 4 spdyn equil.inp > equil.log 2>&1
mpirun -np 4 spdyn prod.inp  > prod.log  2>&1

