if [ ! -d "data" ]; then
  mkdir data
fi
cd data
wget -O hyper_reva.tif https://www.dropbox.com/s/o5ey5xkongryyyj/hyper_reva.tif?dl=1
wget -O hyperspectral.tif https://www.dropbox.com/s/3nofr9n10ixpdz7/hyperspectral.tif?dl=1
wget -0 multispectral.tif https://www.dropbox.com/s/a3eg483mtnsal9n/liss4_multispectral.tif?dl=1
wget -O training_data.kmz https://www.dropbox.com/s/ma2se7ghe62sreq/training_data.kmz?dl=1
wget -O hyperion-bands.xlsx https://www.dropbox.com/s/cacp2xwu9ot6mpp/hyperion-bands.xlsx?dl=1
