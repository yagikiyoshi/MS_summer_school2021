######################################################
# Batch file for a Gaussian job (SMP Parallel)       #
#   Written by K.Yagi                                #
#   Last modified  :   2013/04/12                    #
#
#$ -S /bin/bash
#$ -V
#$ -cwd
#$ -N gua
#$ -j y
#$ -pe ompi 16
#$ -q y2.q
######################################################

#
#  INP : Input filename
#
    INP=imidazole.com

    MOL=${INP%.*}
    OUT=$MOL.out
    TMP=$INP.tmp

    DATADIR=$(pwd)

#
# ----------------------------------------------------------
# General settings for GAUSSIAN
#
#   Provide the following information:
#    1. GAUSS_DIR    : Root directory where Gaussian is located
#    2. GAUSS_EXEBIN : Folder where Executables are located
#    3. GAUSS_SCRDIR : Local scratch directory 
#
    # note that this build of G09 allows parallel calc. only 
    # within the node
    if [ $NHOSTS -gt 1 ]; then
       echo "Error! This build of G09 allows parallel only within the node"
       exit -1
    fi 

    #export GAUSS_DIR=/home/mdsoft/gaussian/g09D01_HCentOS6/g09
    export GAUSS_DIR=/home/mdsoft/gaussian/g09D01_HCentOS7/g09
    export GAUSS_EXEBIN=$GAUSS_DIR/g09

    export GAUSS_EXEDIR=$GAUSS_DIR/bsd:$GAUSS_DIR
    if  [ $?PATH ]; then
      export PATH=$GAUSS_EXEDIR:$PATH
    else
      export PATH=$GAUSS_EXEDIR
    fi

    export GAUSS_SCRDIR=/scr2/$USER/$MOL.$$
    mkdir -p $GAUSS_SCRDIR

#
# ----------------------------------------------------------
# SMP parallel job
#
    touch $TMP
    echo "%NprocShared=$NSLOTS" >> $TMP
    grep -v -i nproc $INP >> $TMP
    mv $TMP $INP
#

# ==============================================================
# Now execute
    (time $GAUSS_EXEBIN < $DATADIR/$INP) > $DATADIR/$OUT 2>&1
# ==============================================================
# Post process
    rm -r $GAUSS_SCRDIR
    if [ -e $MOL.chk ]; then
       formchk $MOL.chk
    fi
# 
    exit 0
#
