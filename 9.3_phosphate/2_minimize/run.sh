#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=16
export QM_NUM_THREADS=16
mpirun -np 1 atdyn qmmm_mini.inp  > qmmm_mini.log  2>&1

