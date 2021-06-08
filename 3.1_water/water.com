%NprocShared=16
%chk=water.chk
%mem=1gb
#P B3LYP/cc-pVDZ opt 

B3LYP/cc-pVDZ water

0 1
 O   0.0  0.0  0.0
 H   1.5  0.0  0.0
 H   0.0  1.5  0.0

