#!/bin/bash

# -----------------------------------------------
# Settings for Gaussian16
#
module load gaussian
GAUSS_EXEBIN=g16

# --- Set the path for a scratch folder ---
scratch=/scr/${USER}

# (optional) 
# --- Set a checkpoint file to read initial MOs ---
#initialchk='../initial.chk'

# -----------------------------------------------

QMINP=$1
QMOUT=$2
NSTEP=$3
MOL=${QMINP%.*}

# -----------------------------------------------
# Initial MO
#
# The initial MO is copied only for the 1st step 
# in MD.
#
if [ $NSTEP -eq 0 ] && [ -n "${initialchk}" ] && [ -e ${initialchk} ]; then
  cp ${initialchk} gaussian.chk
fi

# -----------------------------------------------
# Scratch folder settings
#
export GAUSS_SCRDIR=$scratch/$(mktemp -u $MOL.XXXX)
mkdir -p ${GAUSS_SCRDIR}

# -----------------------------------------------
# SMP parallel setting
#   - check if QM_NUM_THREADS is undefined.
#   - same as "test -v"
#
if [ -z "$QM_NUM_THREADS" ] && [ "${QM_NUM_THREADS:-A}" = "${QM_NUM_THREADS-A}" ]; then
  QM_NUM_THREADS=$OMP_NUM_THREADS
fi

TMP=$(mktemp tmp.XXXX)
echo "%NprocShared=${QM_NUM_THREADS}" >> $TMP
grep -v -i nproc $QMINP >> $TMP
mv $TMP $QMINP

# -----------------------------------------------
# Now exe g09 and create a formatted chk file
#
(time $GAUSS_EXEBIN < $QMINP) > ${QMOUT} 2>&1
formchk gaussian.chk gaussian.Fchk >& /dev/null

# -----------------------------------------------
# Remove unnecessary folder
#
rm -rf ${GAUSS_SCRDIR}

