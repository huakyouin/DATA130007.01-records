#!/bin/bash

#SBATCH --job-name=python
#SBATCH --output=pe_method.log
#SBATCH --gpus=2
#SBATCH --cpus-per-task=16
#SBATCH --nodelist=bigMem1

python main.py --PE_method LE --dataset cora --feature_type N --random_partition --hidden_dim 128 --arch_type GAT_PE --epochs 150 --lr 0.008
