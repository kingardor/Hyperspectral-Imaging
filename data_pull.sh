#!/usr/bin/env bash

#Script to pull all data for Hyperspectral Imgaing
Force="NULL"
if [ "$2" = "-f" ] || [ "$2" = "--force" ]; then
  Force="True"
else
  Force="False"
fi

if [ ! -d "data" ]; then
  mkdir data
fi
cd data

if [ "$1" = "-a" ] || [ "$1" = "--all" ]; then
  if [ ! -d "rawData" ]; then
    mkdir rawData
  fi
  cd rawData
  if [ ! -e hyper_reva.tif ]; then
    wget -O hyper_reva.tif https://www.dropbox.com/s/o5ey5xkongryyyj/hyper_reva.tif?dl=1
    echo "Download hyper_reva.tif complete."
  fi
  if [ ! -e hyperspectral.tif ]; then
    wget -O hyperspectral.tif https://www.dropbox.com/s/3nofr9n10ixpdz7/hyperspectral.tif?dl=1
    echo "Download hyperspectral.tif complete."
  fi
  if [ ! -e multispectral.tif ]; then
    wget -O multispectral.tif https://www.dropbox.com/s/a3eg483mtnsal9n/liss4_multispectral.tif?dl=1
    echo "Download multispectral.tif complete."
  fi
  if [ ! -e training_data.kmz ]; then
    wget -O training_data.kmz https://www.dropbox.com/s/ma2se7ghe62sreq/training_data.kmz?dl=1
    echo "Download training_data.kmz complete."
  fi
  if [ ! -e hyperion-bands.xlsx ]; then
    wget -O hyperion-bands.xlsx https://www.dropbox.com/s/cacp2xwu9ot6mpp/hyperion-bands.xlsx?dl=1
    echo "Download hyperion-bands.tif complete."
  fi
  cd ..

  if [ ! -d "TrainingDataKML" ]; then
    mkdir TrainingDataKML
  fi
  cd TrainingDataKML
  wget -O TrainingData.zip https://www.dropbox.com/s/2fi11e8jblclb3o/TrainingDataKML.zip?dl=1
  unzip TrainingData.zip
  rm TrainingData.zip
  echo "Download and extraction of TrainingDataKML.zip complete."
  cd ..

  if [ ! -d "TrainingData" ]; then
    mkdir TrainingData
  fi
  cd TrainingData
  wget -O TrainingData.zip https://www.dropbox.com/s/yjubif7vuhvhafg/TrainingData.zip?dl=1
  unzip TrainingData.zip
  rm TrainingData.zip
  echo "Download and extraction of TrainingData.zip complete."
  cd ..

  if [ ! -d "TrainingDataZoom" ]; then
    mkdir TrainingDataZoom
  fi
  cd TrainingDataZoom
  wget -O TrainingDataZoom.zip placeholder
  unzip TrainingDataZoom.zip
  rm TrainingDataZoom.zip
  echo "Download and extraction of TrainingDataZoom.zip complete."
  cd ..

elif [ "$1" = "-r" ] || [ "$1" = "--raw" ]; then
  if [ ! -d "rawData" ]; then
    mkdir rawData
  fi
  cd rawData
  if [ ! -e hyper_reva.tif ]; then
    wget -O hyper_reva.tif https://www.dropbox.com/s/o5ey5xkongryyyj/hyper_reva.tif?dl=1
    echo "Download hyper_reva.tif complete."
  fi
  if [ ! -e hyperspectral.tif ]; then
    wget -O hyperspectral.tif https://www.dropbox.com/s/3nofr9n10ixpdz7/hyperspectral.tif?dl=1
    echo "Download hyperspectral.tif complete."
  fi
  if [ ! -e multispectral.tif ]; then
    wget -O multispectral.tif https://www.dropbox.com/s/a3eg483mtnsal9n/liss4_multispectral.tif?dl=1
    echo "Download multispectral.tif complete."
  fi
  if [ ! -e training_data.kmz ]; then
    wget -O training_data.kmz https://www.dropbox.com/s/ma2se7ghe62sreq/training_data.kmz?dl=1
    echo "Download training_data.kmz complete."
  fi
  if [ ! -e hyperion-bands.xlsx ]; then
    wget -O hyperion-bands.xlsx https://www.dropbox.com/s/cacp2xwu9ot6mpp/hyperion-bands.xlsx?dl=1
    echo "Download hyperion-bands.tif complete."
  fi
  cd ..

elif [ "$1" = "-k" ] || [ "$1" = "--kml" ]; then
  if [ ! -d "TrainingDataKML" ]; then
    mkdir TrainingDataKML
  fi
  cd TrainingDataKML
  wget -O TrainingData.zip https://www.dropbox.com/s/2fi11e8jblclb3o/TrainingDataKML.zip?dl=1
  unzip TrainingData.zip
  rm TrainingData.zip
  echo "Download and extraction of TrainingDataKML.zip complete."
  cd ..

elif [ "$1" = "-t" ] || [ "$1" = "--train" ]; then
  if [ ! -d "TrainingData" ]; then
    mkdir TrainingData
  fi
  cd TrainingData
  wget -O TrainingData.zip https://www.dropbox.com/s/yjubif7vuhvhafg/TrainingData.zip?dl=1
  unzip TrainingData.zip
  rm TrainingData.zip
  echo "Download and extraction of TrainingData.zip complete."
  cd ..

elif [ "$1" = "-z" ] || [ "$1" = "--zoom" ]; then
  if [ ! -d "TrainingDataZoom" ]; then
    mkdir TrainingDataZoom
  fi
  cd TrainingDataZoom
  wget -O TrainingDataZoom.zip https://www.dropbox.com/s/kbk9qywsovh7vwl/TrainingDataZoom.zip?dl=1
  unzip TrainingDataZoom.zip
  rm TrainingDataZoom.zip
  echo "Download and extraction of TrainingDataZoom.zip complete."
  cd ..

elif [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "-a or --all: Download all data."
  echo "-r or --raw: Download raw data."
  echo "-k or --kml: Download dataset in KML form."
  echo "-t or --train: Download normal training dataset."
  echo "-z or --zoom: Download zoomed training dataset."
  echo "-f or --force: To force pull data."
  echo "Example: sh data_pull.sh -a"
  echo "Example: sh data_pull.sh --zoom --force"

else
  echo "Use sh data_pull.sh -h for more details."

fi
