%NprocShared=16
%oldchk=water.chk
%chk=water_cation.chk
%mem=1gb
#P B3LYP/cc-pVDZ opt geom=checkpoint

B3LYP/cc-pVDZ water +1

1 2

