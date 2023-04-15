#!/bin/bash

# Find the latest version of pytorch online
url = "https://pytorch.org/get-started/locally/"
echo "Find the latest version of pytorch online: $url"

# CUDA support is optional
read -rp "Enter yes if CUDA support, other will be only cpu support" cuda_support
read -rp "Enter the cuda version (e.g. 11.8) " cuda_version

if [ "$cuda_support" = "yes" ]; then
    conda install pytorch torchvision torchaudio cudatoolkit=${cuda_version} -c pytorch -c nvidia
else
    conda install pytorch torchvision torchaudio cpuonly -c pytorch
fi