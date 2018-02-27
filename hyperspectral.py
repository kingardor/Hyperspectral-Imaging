"""Pyton Script for Hyperspectral imaging using openCV."""

import numpy as np
from skimage import io
import matplotlib.pyplot as plt
from PIL import Image
import cv2

image_list = []
img = io.imread('hyper_reva.tif', plugin='tifffile')
height, width, layers = img.shape

rolled = list(np.rollaxis(img, -1))

for l in range(layers):
    image_list.append(rolled[l])

# plt.imshow(cv2.cvtColor(image_list[0], cv2.COLOR_BGR2RGB))
for i in image_list:
    plt.imshow(i)
    # plt.imshow(i, cmap=plt.cm.Reds)
    # plt.imshow(i, cmap=plt.cm.Greens)
    # plt.imshow(i, cmap=plt.cm.Blues)
plt.show()  # or io.show()

# a = np.asarray(a)
# print(a.shape)
