#!/bin/bash

module load gaussian
. /home1/common/sindo/sindovars.sh

if [ -e resources.info ]; then
  rm resources.info
fi
hostname >> resources.info

java RunMakePES -f makePES.xml >& makePES.out

