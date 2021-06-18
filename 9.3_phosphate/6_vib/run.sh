#!/bin/bash

. /home1/common/sindo/sindovars.sh

export POTDIR=./pes
if [ -e ${POTDIR} ]; then
  rm -r ${POTDIR}
fi
mkdir ${POTDIR}
cp ../4_qff/prop_no_1.mop ${POTDIR}
cp ../5_grid/*.pot        ${POTDIR}
cp ../5_grid/*.dipole     ${POTDIR}

sindo < vqdpt2.inp > vqdpt2.out 2>&1

rm mode_type?
rm cho.basis

gnuplot plotIR.gpi
