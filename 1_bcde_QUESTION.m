clear all;
clc;
close all;
pkg load image

# QUESTION 1

# read and display image
img=imread('image1.png');
subplot(3,3,1);
imshow(img);
title('Original Image');

# image Resized
img2=imresize(img,0.5);
subplot(3,3,2);
imshow(img2);
title('Resized Image');

# image on grayscale
img3=rgb2gray(img);
subplot(3,3,3);
imshow(img3);
title('Image on Grayscale');

# image blck and white
img4=im2bw(img);
subplot(3,3,4);
imshow(img4);
title('Black and white image');
