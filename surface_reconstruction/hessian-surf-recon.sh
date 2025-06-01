#!/bin/sh
#SBATCH --cpus-per-task=6
#SBATCH --mem=15G
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu-cluster
#SBATCH --output=train-hessian-surf.out
HOME=/clusterstorage/dghosh
source $HOME/.bashrc
conda init
conda activate deb
python /clusterstorage/dghosh/Neural-Singular-Hessian/surface_reconstruction/run_sdf_recon.py
