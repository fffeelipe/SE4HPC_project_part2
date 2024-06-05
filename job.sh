#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH --nodes=1 # total number of nodes
#SBATCH --ntasks=2
#SBATCH --time=00:05:00 # Max execution time
#SBATCH --cpus-per-task=2
#SBATCH --output stdout.out
#SBATCH --error error.out

export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

singularity exec --bind $TMPDIR:$TMPDIR matrixMul.sif bash -c "export OMPI_MCA_tempdir_base=$TMPDIR && mpirun -np 2 /opt/main" 