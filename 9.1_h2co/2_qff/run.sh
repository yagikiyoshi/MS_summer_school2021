#!/bin/bash

module load gaussian
. /home1/common/sindo/sindovars.sh

unset SINDO_RSH
java RunMakePES -f makePES.xml >& makePES.out

