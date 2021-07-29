#!/bin/bash

module load gaussian

export GAUSS_SCRDIR=/scr/$USER/job.$$
mkdir -p $GAUSS_SCRDIR

MOL=rhodamine1
(time g16 < ${MOL}.com) > ${MOL}.out 2>&1
formchk ${MOL}.chk

rm -r $GAUSS_SCRDIR

