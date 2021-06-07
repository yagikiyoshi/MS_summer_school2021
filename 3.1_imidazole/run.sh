#!/bin/bash

MOL=imidazole
export GAUSS_SCRDIR=/scr/$USER/$MOL.$$
mkdir -p $GAUSS_SCRDIR

(time g16 < $MOL.com) > $MOL.out 2>&1
rm -r $GAUSS_SCRDIR

formchk $MOL.chk
cubegen 0 Density=SCF   $MOL.fchk $MOL.density.cub 0 h
cubegen 0 Potential=SCF $MOL.fchk $MOL.esp.cub     0 h

