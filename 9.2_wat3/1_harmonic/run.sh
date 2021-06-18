#!/bin/bash

module load gaussian

MOL=w3-b3lyp-dz
export GAUSS_SCRDIR=/scr/$USER/${MOL}.$$
mkdir -p $GAUSS_SCRDIR

(time g16 < ${MOL}.com) > ${MOL}.out 2>&1
rm -r $GAUSS_SCRDIR

formchk ${MOL}.chk

. /home1/common/sindo/sindovars.sh
java Fchk2Minfo   ${MOL} > /dev/null
java HarmSpectrum ${MOL}.minfo 5 800 4000 1 > harmonic.spectrum
