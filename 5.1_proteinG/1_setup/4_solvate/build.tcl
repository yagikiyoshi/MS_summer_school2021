# Solvate the protein in 64x64x64 A^3 water box
package require solvate
set psffile "../3_psfgen/protein.psf"
set pdbfile "../3_psfgen/protein.pdb"
solvate $psffile $pdbfile -minmax {{-32 -32 -32} {32 32 32}} -o wbox 
exit
