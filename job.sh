#!/bin/bash
export NNODES=2
#SBATCH --job-name singularity-mpi
#SBATCH -N $NNODES # total number of nodes
#SBATCH --time=00:05:00 # Max execution time

mpirun -n 2 singularity exec ./my_container.sif /opt/main