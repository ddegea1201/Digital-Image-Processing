clc;
c=imread("");
cd = double(c);
c1 = modulo(cd, 2);
c2 = modulo(floor(cd/2), 2);
c3 = modulo(floor(cd/4), 2);
c4 = modulo(floor(cd/8), 2);
c5 = modulo(floor(cd/16), 2);
c6 = modulo(floor(cd/32), 2);
c7 = modulo(floor(cd/64), 2);
c8 = modulo(floor(cd/128), 2);  
//combining image again to form equivalent to ori//ginal grayscale image
cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + c2) + c1);  
//plotting original image in first subplot
subplot(2, 5, 1);
imshow(c);
title('Original Image');  
//plotting binary image having extracted bit from //1st to 8th in subplot from 2nd to 9th
subplot(2, 5, 2);
imshow(c1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(c2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(c3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(c4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(c5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(c6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(c7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(c8);
title('Bit Plane 8');  
//plotting recombined image in 10th subplot
subplot(2, 5, 10);
imshow(uint8(cc));
title('Recombined Image');
