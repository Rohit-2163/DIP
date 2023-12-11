% Load the image package
pkg load image;

% Load an image
img = imread('coins.png');

% Function to apply an edge detection mask
BW1 = edge(img,'sobel');

BW2 = edge(img,'canny');


% Display the original and edge detected images
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(BW1), title('Edge Detected Image (Sobel)');
subplot(1,3,3), imshow(BW2), title('Edge Detected Image (canny)');

