pkg load image;

I = imread("cameraman.tif");
figure;
imshow(im2bw(I));
title("Original Image");
J = imtranslate(im2bw(I),50,25);
figure;
imshow(im2bw(J));
title("Translated Image");
