#!/usr/bin/env bash

ln -s /data/oacd/geog0121 data

# conda create -n geog0121 -y
# conda activate geog0121
# conda install -y -c conda-forge cartopy cftime jupyter nb_conda nc-time-axis matplotlib regionmask urllib3 xarray xclim

conda config --add envs_dirs /opt/conda_envs/

cd Desktop
ln -s /data/oacd/geog0121 geog0121_data
ln -s /opt/PanoplyJ/panoply.sh panoply
ln -s ~/Documents/geog0121/open_geog0121_JupyterLab.sh geog0121_JupyterLab 