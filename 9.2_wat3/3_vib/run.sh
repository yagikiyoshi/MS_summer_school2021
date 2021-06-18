#!/bin/bash

. /home1/common/sindo/sindovars.sh

export POTDIR=../2_mrpes

sindo < vqdpt2.inp > vqdpt2.out 2>&1

rm mode_type?
rm cho.basis

gnuplot plotIR.gpi
