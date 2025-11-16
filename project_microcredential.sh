#!/bin/bash
#SBATCH --job-name=project_microcredential_ivd
#SBATCH --partition=doduo
#SBATCH --mem=8G
#SBATCH --time=00:10:00

# echo "pull training image from dockerhub"
# apptainer pull ./train_ml.sif docker://ilseclvd/train_ml:v01-amd64

# echo "pull serving image from dockerhub"
# apptainer pull ./infer_ml.sif docker://ilseclvd/infer_ml:v01-amd64

echo "even though the pull does the same, here is the build command"
apptainer build ./train_ml.sif docker://ilseclvd/train_ml:v01-amd64

echo "same for the serving image"
apptainer build ./infer_ml.sif docker://ilseclvd/infer_ml:v01-amd64
