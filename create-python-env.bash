#!/bin/bash

# Install custom SSB python library
conda init bash
source /root/.bashrc
# https://conda.anaconda.org/conda-forge/linux-64/current_repodata.json
conda create -n ssb-env python=2.7.13 pip
conda activate ssb-env
pip install ssb-pseudonymization
conda package --pkg-name ssb-env
mv ssb-env*.tar.bz2 ssb-library.tar.bz2

exit $?
