close all
clear all
I1 = imread('lena512.bmp');
I2 = double(I1)/255;
I3 = distort(I2);
h = distort([1 0  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
b = FIRinvers_delay(5, h, 7);
I4 = filter2(b', I3);
imshow(I3)
figure
imshow(I4)