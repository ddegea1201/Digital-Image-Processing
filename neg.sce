clc;
original=imread("");
imgdouble=double(original);
//For 8 bit image
c=255;
negative=c-original;
figure(1)
imshow(original);
figure(2)
imshow(negative);
