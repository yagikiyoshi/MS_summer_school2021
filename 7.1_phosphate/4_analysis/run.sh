#!/bin/bash

module load intel

export PATH=$PATH:/home1/common/genesis-1.6.0/bin

trj_analysis qmd_angle.inp > qmd_angle.out

awk -f 1dhist.awk output_qmd.ang > hist_qmd.ang

gnuplot plotHist.gpi
