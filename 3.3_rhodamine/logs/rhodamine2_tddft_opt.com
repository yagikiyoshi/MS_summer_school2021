%NprocShared=16
%oldchk=rhodamine2.chk
%chk=rhodamine2_tddft_opt.chk
%mem=1gb
#p B3LYP/cc-pVDZ TD=(singlets,root=1)
geom=checkpoint guess=read opt=(maxcycles=20)

rhodamine TDDFT

1 1


