#!/bin/bash

module load intel
export PATH=$PATH:/home1/common/genesis-1.6.0/bin

crd_convert crd_conv.inp > crd_conv.log 2>&1
