#!/bin/bash

# create conda env
read -rp "Enter environment name: " env_name
read -rp "Enter python version (e.g. 3.10.9) " python_version
conda create -yn "$env_name" python="$python_version"
conda activate "$env_name"

pip3 install -r requirements.txt
