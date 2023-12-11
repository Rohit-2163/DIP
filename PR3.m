% Load the images
img1 = imread('p3img1.png');
img2 = imread('P3img2.png');

% Ensure the images are of the same size
if size(img1) != size(img2)
  error('The images are of different sizes. Please provide images of the same size.');
end

% a. Addition of two images
img_add = img1 + img2;

% b. Subtract one image from another
img_sub = img1 - img2;

% c. Calculate mean value of images
img_mean = (img1 + img2) / 2;

% Display the results
figure, imshow(img_add), title('Addition of two images');
figure, imshow(img_sub), title('Subtraction of one image from another');
figure, imshow(img_mean), title('Mean value of images');
