#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=8
export QM_NUM_THREADS=8
mpirun -np 2 atdyn qmmm_grid.inp  > qmmm_grid.log  2>&1

. /home1/common/sindo/sindovars.sh
java RunMakePES -f makePES.xml >& makePES.out2

