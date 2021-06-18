#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=8
export QM_NUM_THREADS=8
mpirun -np 2 atdyn qmmm_harm.inp  > qmmm_harm.log  2>&1

. /home1/common/sindo/sindovars.sh
java HarmSpectrum qmmm_harm.minfo 5 300 1800 1 > harmonic.spectrum
