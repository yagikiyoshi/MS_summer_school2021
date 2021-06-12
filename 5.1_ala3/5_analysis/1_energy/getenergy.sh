#!/bin/bash

grep "INFO:" ../../4_production/log1 | tail -n +2 >  energy.log
grep "INFO:" ../../4_production/log2 | tail -n +2 >> energy.log
grep "INFO:" ../../4_production/log3 | tail -n +2 >> energy.log
#grep "INFO:" ../../4_production/log4 | tail -n +2 >> energy.log
#grep "INFO:" ../../4_production/log5 | tail -n +2 >> energy.log

gnuplot temperature.gpi
