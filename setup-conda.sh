#!/bin/bash

# Create a conda environment with the specified name and python version
read -rp "Enter environment name: " env_name
read -rp "Enter python version (e.g. 3.10.9) " python_version
# CUDA support is optional
read -rp "Enter yes if CUDA support " cuda_support
# Install requirements.txt is optional
read -rp "Enter yes if you want to install requirements.txt " install_requirements

conda create -yn "$env_name" python="$python_version"
conda activate "$env_name"

if [ "$cuda_support" = "yes" ]; then
    conda install pytorch torchvision torchaudio cudatoolkit=11.8 -c pytorch -c nvidia
else
    conda install pytorch torchvision torchaudio cpuonly -c pytorch
fi

if [ "$install_requirements" = "yes" ]; then
    pip install -r requirements.txt
fi