# Setup file to setup the environment for Hyperspectral Imaging

# To check if trainingData directory exists and create accordingly
if [ ! -d "trainingData" ]; then
  mkdir trainingData

# To pull the raw data
sh data_pull.sh

# To get all the requirements for the virtual environment
pip3 install -r requirments.txt
