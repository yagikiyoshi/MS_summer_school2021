%nprocshared=16
%chk=rhodamine2.chk
%mem=1GB
#p opt b3lyp/cc-pvdz geom=connectivity

Rhodamine (2)

1 1
 C       -3.656416   -0.949826    0.096689
 C       -2.407672   -1.627286    0.156144
 C       -1.225112   -0.927232    0.010378
 C       -1.176536    0.479821   -0.217093
 C       -2.435793    1.143346   -0.287476
 C       -3.621366    0.470897   -0.143214
 C        0.074557    1.117786   -0.352993
 C        1.246756    0.338101   -0.276345
 C        1.141030   -1.066300   -0.045747
 C        2.240117   -1.899517    0.045935
 H        2.053741   -2.958897    0.200701
 C        3.553791   -1.373025   -0.084485
 C        3.675013    0.045255   -0.315335
 C        2.571824    0.852053   -0.404609
 H       -2.334359   -2.700340    0.308538
 H       -2.449976    2.219300   -0.463308
 H       -4.547195    1.036365   -0.212212
 H        4.659122    0.498725   -0.404768
 H        2.702843    1.921430   -0.571257
 C        0.152435    2.581022   -0.664210
 C        0.246701    3.607280    0.305946
 C        0.137151    2.933880   -2.023933
 C        0.322238    4.946323   -0.113510
 C        0.209286    4.270032   -2.423698
 H        0.064695    2.146199   -2.776732
 C        0.303730    5.281646   -1.464758
 H        0.397173    5.713385    0.658242
 H        0.192077    4.516231   -3.487303
 H        0.363750    6.328057   -1.769088
 O       -0.077542   -1.658595    0.088780
 N       -4.839601   -1.599258    0.258546
 N        4.652067   -2.166521    0.007315
 C        0.280184    3.398437    1.789309
 O        0.365689    4.298061    2.595057
 O        0.207387    2.097855    2.164567
 H        0.236741    2.099657    3.139476
 C        6.013885   -1.657570   -0.219991
 H        6.599734   -2.495227   -0.625417
 H        5.987373   -0.899478   -1.014447
 C        6.685813   -1.107035    1.041043
 H        6.143535   -0.238902    1.444786
 H        6.742377   -1.869454    1.832476
 H        7.713455   -0.789081    0.807466
 C        4.550855   -3.594731    0.340698
 H        3.740138   -3.734681    1.069330
 H        5.478752   -3.864308    0.865739
 C        4.351928   -4.499559   -0.878807
 H        4.332793   -5.553539   -0.561697
 H        3.406520   -4.281570   -1.397807
 H        5.171527   -4.382448   -1.603722
 C       -4.869631   -3.054973    0.463646
 H       -5.781977   -3.298475    1.016192
 H       -4.039228   -3.330698    1.129783
 C       -6.102716   -0.834739    0.118911
 H       -6.066036    0.017981    0.815956
 H       -6.140855   -0.412554   -0.899942
 C       -7.386642   -1.611806    0.381996
 H       -7.448601   -1.983339    1.415227
 H       -8.231403   -0.922854    0.232654
 H       -7.526379   -2.455315   -0.309130
 C       -4.817231   -3.865632   -0.834050
 H       -3.899925   -3.664192   -1.407429
 H       -4.844296   -4.941341   -0.600591
 H       -5.676717   -3.638635   -1.482651

 1 2 1.5 6 1.5 31 1.5
 2 3 2.0 15 1.0
 3 4 1.5 30 1.0
 4 5 1.5 7 1.5
 5 6 2.0 16 1.0
 6 17 1.0
 7 8 1.5 20 1.0
 8 9 1.5 14 1.5
 9 10 2.0 30 1.0
 10 11 1.0 12 1.5
 11
 12 13 1.5 32 1.5
 13 14 2.0 18 1.0
 14 19 1.0
 15
 16
 17
 18
 19
 20 21 1.5 22 1.5
 21 23 1.5 33 1.0
 22 24 1.5 25 1.0
 23 26 1.5 27 1.0
 24 26 1.5 28 1.0
 25
 26 29 1.0
 27
 28
 29
 30
 31 51 1.0 54 1.0
 32 37 1.0 44 1.0
 33 34 2.0 35 1.0
 34
 35 36 1.0
 36
 37 38 1.0 39 1.0 40 1.0
 38
 39
 40 41 1.0 42 1.0 43 1.0
 41
 42
 43
 44 45 1.0 46 1.0 47 1.0
 45
 46
 47 48 1.0 49 1.0 50 1.0
 48
 49
 50
 51 52 1.0 53 1.0 61 1.0
 52
 53
 54 55 1.0 56 1.0 57 1.0
 55
 56
 57 58 1.0 59 1.0 60 1.0
 58
 59
 60
 61 62 1.0 63 1.0 64 1.0
 62
 63
 64
