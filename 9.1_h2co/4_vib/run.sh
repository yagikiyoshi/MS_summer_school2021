#!/bin/bash

. /home1/common/sindo/sindovars.sh

level=b3lyp
export POTDIR=pes_${level}
mkdir  ${POTDIR}
cp ../2_qff/prop_no_1.mop  ${POTDIR}
cp ../3_grid_b3lyp/*pot    ${POTDIR}
cp ../3_grid_b3lyp/*dipole ${POTDIR}

sindo < vci.inp    > vci_${level}.out    2>&1
mv vci-IR.data vci-IR_${level}.data
mv vci-IR.spectrum vci-IR_${level}.spectrum

level=mrpes
export POTDIR=pes_${level}
mkdir  ${POTDIR}
cp ../2_qff/prop_no_1.mop  ${POTDIR}
cp ../3_grid_b3lyp/*pot    ${POTDIR}
cp ../3_grid_b3lyp/*dipole ${POTDIR}
cp ../3_grid_ccsdt/*pot    ${POTDIR}

sindo < vci.inp    > vci_${level}.out    2>&1
mv vci-IR.data vci-IR_${level}.data
mv vci-IR.spectrum vci-IR_${level}.spectrum

sindo < vqdpt2.inp > vqdpt2_${level}.out 2>&1
mv vqdpt-IR.data vqdpt-IR_${level}.data
mv vqdpt-IR.spectrum vqdpt-IR_${level}.spectrum

rm mode_type?
rm cho.basis

gnuplot plotIR.gpi
