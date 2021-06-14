#!/bin/bash

module load intel
export PATH=$PATH:/home1/common/genesis-1.6.0/bin

crd_convert  INP > log 2>&1
