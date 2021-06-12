#!/bin/bash

module load intel
export PATH=$PATH:/home1/common/genesis-1.6.0/bin

trj_analysis INP > log 2>&1
gnuplot distance.gpi
