#!/bin/bash
#SBATCH -J jack_2
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 30:00:00
#SBATCH --gres=gpu:2
module load anaconda3/5.3.0
python train.py --dataset cifar10 --model wideresnet --data_augmentation --cutout --length 16