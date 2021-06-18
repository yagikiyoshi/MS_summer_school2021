#!/bin/bash

. /home1/common/sindo/sindovars.sh

level=b3lyp
export POTDIR=../3_mrpes/pes_${level}

sindo < vci.inp    > vci_${level}.out    2>&1
mv vci-IR.data vci-IR_${level}.data
mv vci-IR.spectrum vci-IR_${level}.spectrum

level=mrpes
export POTDIR=../3_mrpes/pes_${level}

sindo < vci.inp    > vci_${level}.out    2>&1
mv vci-IR.data vci-IR_${level}.data
mv vci-IR.spectrum vci-IR_${level}.spectrum

sindo < vqdpt2.inp > vqdpt2_${level}.out 2>&1
mv vqdpt-IR.data vqdpt-IR_${level}.data
mv vqdpt-IR.spectrum vqdpt-IR_${level}.spectrum

rm mode_type?
rm cho.basis

gnuplot plotIR.gpi
