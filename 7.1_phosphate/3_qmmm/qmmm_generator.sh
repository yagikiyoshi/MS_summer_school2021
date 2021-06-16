#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

export OMP_NUM_THREADS=4
qmmm_generator qmmm_generator.inp > qmmm_generator.log 2>&1
