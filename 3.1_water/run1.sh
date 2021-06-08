#!/bin/bash

module load gaussian

MOL=water
export GAUSS_SCRDIR=/scr/$USER/${MOL}.$$
mkdir -p $GAUSS_SCRDIR

(time g16 < ${MOL}.com) > ${MOL}.out 2>&1
rm -r $GAUSS_SCRDIR

formchk ${MOL}.chk
for i in `seq 1 7`; do
  cubegen 0 MO=${i}  ${MOL}.fchk ${MOL}.MO${i}.cub 0 h
done

