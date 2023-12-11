clear all;
clc;
close all;
pkg load image;



% Read an image
img = imread('image1.png');

% Display the image
imshow(img);

% If you want to plot a profile of a row or column in the image, you can use the following code:
row_number = 50; % change this to select a different row
profile = img(row_number, :);
figure;
plot(profile);
title('Profile of row 50');



