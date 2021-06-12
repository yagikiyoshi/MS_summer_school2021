# Load psfgen-plugin and CHARMM topology file
package require psfgen
resetpsf
topology ../../toppar/top_all36_prot.rtf

# Define the peptide as "PROA"
segment PROA {first ACE; last CT3; pdb ../1_oripdb/ala3.pdb}

# Read the coordinates from the PDB file
coordpdb ../1_oripdb/ala3.pdb PROA

# Guess the coordinates of missing atoms
guesscoord

# Generate PDB and PSF files
writepdb proa.pdb
writepsf proa.psf
exit
