"""Pyton Script for Hyperspectral imaging using openCV."""

import numpy as np
from skimage import io
import matplotlib.pyplot as plt
from PIL import Image
import cv2

# To read the read and store it as a numpy array
img = io.imread('hyper_reva.tif', plugin='tifffile')

# To extract features of the image
height, width, channels = img.shape

# This splits the array based on channels
split = np.asarray(cv2.split(img))
print(split.shape)

# To display the image
for i in split:
    plt.imshow(i)
plt.show()  # or io.show()
