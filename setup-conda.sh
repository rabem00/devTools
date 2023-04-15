#!/bin/bash

# This script creates a conda environment with the specified name and python version

# Get the current python version
python_current_version=$(python -c "import sys; print('.'.join(map(str, sys.version_info[:3])))")

# Create a conda environment with the specified name and python version
read -rp "Enter environment name: " env_name
read -rp "Enter python version (e.g. $python_current_version) " python_version

conda create -yn "$env_name" python="$python_version"
conda activate "$env_name"