# Load psfgen-plugin and CHARMM topology file
package require psfgen
resetpsf
topology ../../toppar/top_all36_prot.rtf

# Define the protein as "PROA"
segment PROA {pdb ../2_modpdb/proa.pdb} 

# Assign the coordinates of atoms to PROA using the PDB data
coordpdb ../2_modpdb/proa.pdb PROA

# Guess the coordinates of missing atoms (mainly hydrogen)
guesscoord 

# Generate PDB and PSF files
writepdb protein.pdb
writepsf protein.psf
exit

