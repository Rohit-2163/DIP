pkg load image;
% Load the images
img1 = imread('image4.jpeg');
img2 = imread('image5.jpeg');

% Ensure the images are binary
img1 = imresize(im2bw(img1),[600 600]);
img2 = imresize(im2bw(img2),[600 600]);

% AND operation
and_img = img1 & img2;
figure, imshow(and_img), title('AND operation');

% OR operation
or_img = img1 | img2;
figure, imshow(or_img), title('OR operation');

% Intersection (same as AND for binary images)
intersection_img = img1 & img2;
figure, imshow(intersection_img), title('Intersection');

% NOT operation (Negative image)
not_img1 = ~img1;
figure, imshow(not_img1), title('NOT operation on image 1');

not_img2 = ~img2;
figure, imshow(not_img2), title('NOT operation on image 2');
