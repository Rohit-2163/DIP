clear all;
clc;
close all;
pkg load image;
%2--a
% Read the image
img = imread('image2.png');

% Obtain negative image
neg_img = 255 - img;

% Display the negative image
subplot(2,2,1);
imshow(neg_img);
title('Negative Image');

%2--b
% Read the image
img = imread('image2.png');

% Flip the image horizontally
flip_img = flip(img, 2);
subplot(2,2,2);

% Display the flipped image
imshow(flip_img);
title('Flip Image');


%2--c
% Read the image
img = imread('image2.png');

% Convert the image to grayscale
gray_img = rgb2gray(img);

% Threshold the image
threshold = 128;
thresh_img = gray_img > threshold;
subplot(2,2,3);
% Display the thresholded image
imshow(thresh_img);
title('Threshold Image');

%2--d
% Read the image
img = imread('image2.png');

% Convert the image to grayscale
gray_img = rgb2gray(img);

% Stretch the contrast of the image
low_in = 0.1;
high_in = 0.9;
low_out = 0;
high_out = 1;
stretch_img = imadjust(gray_img, [low_in high_in], [low_out high_out]);

% Display the contrast-stretched image
subplot(2,2,4);
imshow(stretch_img);
title('Contrast Stretch Image');

