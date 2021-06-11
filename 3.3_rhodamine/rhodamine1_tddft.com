%NprocShared=16
%oldchk=rhodamine1.chk
%chk=rhodamine1_tddft.chk
%mem=1gb
#p B3LYP/cc-pVDZ TD=(singlets,root=1)
geom=checkpoint guess=read

rhodamine TDDFT

1 1


