#!/bin/bash

    MOL=imidazole
    export GAUSS_SCRDIR=/scr/$USER/$MOL.$$
    (time g16 < $MOL.com) > $MOL.out 2>&1
    formchk $MOL.chk

