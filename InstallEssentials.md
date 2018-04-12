# Instructions to install Essential tools for Hyperspectral Classification

## Setup Python Virtual Environment

Yes, using a virtual environment for python is better cause you wouldn't want your system python dependencies messed up.

```sh
# To install pip
sudo apt-get install python3-pip

# To install virtualenv and its wrapper
sudo pip3 install virtualenv virtualenvwrapper
```

Add the following lines to .bashrc (.zshrc if you use zsh) by running the following commands:

```sh
echo '# virtualenv and virtualenvwrapper' >> .bashrc
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6' >> .bashrc
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> .bashrc
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> .bashrc
```

Creating a virtual environment:
```sh
mkvirtualenv nameofenv -p python3.6
```
Using a virtual environment:
```sh
workon nameofenv
```
Deactivating a virtual environment:
```sh
deactivate
```

## Install Tensorflow

Make sure you are working in your virtual environment with the workon command.

```sh
# For Tensorflow-CPU
pip3 install tensorflow

# For Tensorflow-GPU
pip3 install tensorflow-gpu
```

#### Verify Tensorflow

Verify your tensorflow installation

```sh
$ python3
>>> import tensorflow as tf
>>> print(tf.__version__)
1.7.0
>>> exit()
```

## Install Keras

Start by installing the following pip packages in your virtual Environment

```sh
pip3 install numpy scipy
pip3 install scikit-learn
pip3 install pillow
pip3 install h5py
```

Once done, continue by installing Keras

```sh
pip3 install keras
```
#### Verify your keras setup

```sh
$ python3
>>> import keras
>>> print(keras.__version__)
2.1.5
>>> exit()
```

Check the keras.json file in ~/.keras

```json
{
    "image_dim_ordering": "tf",
    "floatx": "float32",
    "epsilon": 1e-07,
    "backend": "tensorflow",
    "image_data_format": "channels_last"
}
```

## Other dependencies

Other dependencies can be installed by using the requirements.txt files

```sh
pip3 install -r requirements.txt
```
