% Load the image processing package
pkg load image;

% Read an image
img = imread('cameraman.tif');

% Convert the image to grayscale if it is not
if size(img,3)==3
    img = rgb2gray(img);
end

% Convert the image to binary if it is not
if ~islogical(img)
    img = im2bw(img, graythresh(img));
end

% Define the structuring element
% In this case, we are using a 3x3 square
se = strel('square', 3);

% Perform erosion
eroded_img = imerode(img, se);

% Perform dilation
dilated_img = imdilate(img, se);

% Display the original and processed images
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(eroded_img), title('Eroded Image');
subplot(1,3,3), imshow(dilated_img), title('Dilated Image');

