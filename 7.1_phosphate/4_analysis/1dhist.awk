#  1D histogram analysis
#
BEGIN {
  xmin = 40.0; xmax = 140.0; binsizex = 2.0;
  nx   = (xmax - xmin)/binsizex;
  for (i=0; i<=nx; i++) freq1[i]=0
  for (i=0; i<=nx; i++) freq2[i]=0
  for (i=0; i<=nx; i++) freq3[i]=0
}

{ i = int(($2 - xmin)/binsizex);
  freq1[i] = freq1[i] + 1 }
{ i = int(($3 - xmin)/binsizex);
  freq2[i] = freq2[i] + 1 }
{ i = int(($4 - xmin)/binsizex);
  freq3[i] = freq3[i] + 1 }

END {
  for (i=0; i<=nx; i++) {
    x0 = xmin + i*binsizex;
    print x0, freq1[i], freq2[i], freq3[i]
  }
}
