#!/bin/bash

module load gaussian

export GAUSS_SCRDIR=/scr/$USER/rhodamine.$$
mkdir -p $GAUSS_SCRDIR

for i in 1 2; do
  MOL=rhodamine${i}
  (time g16 < ${MOL}.com) > ${MOL}.out 2>&1
  formchk ${MOL}.chk
  cubegen 0 MO=HOMO  ${MOL}.fchk ${MOL}.HOMO.cub 0 h
  cubegen 0 MO=LUMO  ${MOL}.fchk ${MOL}.LUMO.cub 0 h

  (time g16 < ${MOL}_tddft.com) > ${MOL}_tddft.out 2>&1
  #(time g16 < ${MOL}_tddft_opt.com) > ${MOL}_tddft_opt.out 2>&1

done

rm -r $GAUSS_SCRDIR

