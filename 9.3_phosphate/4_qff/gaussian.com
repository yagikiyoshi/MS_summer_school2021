%chk=gaussian.chk
%NProcShared=8
%mem=1gb
#P B3LYP/cc-pVDZ EmpiricalDispersion=GD3 
scf(conver=8) iop(4/5=100) NoSymm
Charge Force

Gaussian run for QMMM in genesis

-1 1
#coordinate#
#charge#
#elec_field#

