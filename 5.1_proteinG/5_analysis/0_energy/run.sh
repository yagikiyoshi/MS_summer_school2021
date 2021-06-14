#!/bin/bash

grep "INFO:" ../../4_production/log1 | tail -n +2 >  output.ene
grep "INFO:" ../../4_production/log2 | tail -n +2 >> output.ene
grep "INFO:" ../../4_production/log3 | tail -n +2 >> output.ene
#grep "INFO:" ../../4_production/log4 | tail -n +2 >> output.ene
#grep "INFO:" ../../4_production/log5 | tail -n +2 >> output.ene

gnuplot temperature.gpi
