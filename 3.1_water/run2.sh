#!/bin/bash

module load gaussian

#--------------------------------------------

MOL=water_cation
export GAUSS_SCRDIR=/scr/$USER/${MOL}.$$
mkdir -p $GAUSS_SCRDIR

(time g16 < ${MOL}.com) > ${MOL}.out 2>&1
rm -r $GAUSS_SCRDIR

formchk ${MOL}.chk

#--------------------------------------------

MOL=water_anion
export GAUSS_SCRDIR=/scr/$USER/${MOL}.$$
mkdir -p $GAUSS_SCRDIR

(time g16 < ${MOL}.com) > ${MOL}.out 2>&1
rm -r $GAUSS_SCRDIR

formchk ${MOL}.chk
