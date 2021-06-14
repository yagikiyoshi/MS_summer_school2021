# Add ions in the system (Salt concentration: 150 mM NaCl)
package require autoionize
set psffile "../4_solvate/wbox.psf"
set pdbfile "../4_solvate/wbox.pdb"
autoionize -psf $psffile -pdb $pdbfile -sc 0.15 -cation SOD -anion CLA
exit
