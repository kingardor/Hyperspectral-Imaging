#!/usr/bin/env bash

#Script to pull all data for Hyperspectral Imaging

if [ ! -d "data" ]; then
  mkdir data
fi
cd data

wget -O Indian_pines_corrected.mat https://www.dropbox.com/s/hd255t8ochbg89b/Indian_pines_corrected.mat?dl=1
wget -O Indian_pines_gt.mat https://www.dropbox.com/s/ebrpnbrqcyibr3g/Indian_pines_gt.mat?dl=1
