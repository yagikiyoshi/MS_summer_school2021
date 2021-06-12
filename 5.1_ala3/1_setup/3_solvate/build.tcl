# Solvate the protein in 50.2x50.2x50.2 A^3 water box
package require solvate
set psffile "../2_psfgen/proa.psf"
set pdbfile "../2_psfgen/proa.pdb"
solvate $psffile $pdbfile -minmax {{-25.1 -25.1 -25.1} {25.1 25.1 25.1}} -o wbox 
exit
