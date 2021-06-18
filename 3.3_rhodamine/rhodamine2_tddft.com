%NprocShared=16
%oldchk=rhodamine2.chk
%chk=rhodamine2_tddft.chk
%mem=10gb
#p B3LYP/cc-pVDZ TD=(singlets,root=1)
geom=checkpoint guess=read

rhodamine TDDFT

1 1


