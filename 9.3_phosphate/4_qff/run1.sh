#!/bin/bash

module load gaussian
. /home1/common/sindo/sindovars.sh

java RunMakePES -f makePES.xml >& makePES.out1

