clc;
clf;
i=imread("")
ihsv=rgb2hsv(i)
ih=imhistequal(ihsv(:,:,2))
io=hsv2rgb(ihsv)
subplot(1,4,1);
imshow(i);
title("Original Image");
subplot(1,4,2);
imshow(ihsv);
title("Color Image Histogram");
subplot(1,4,3);
imshow(io);
title("HSV to RGB");
subplot(1,4,4);
imshow(ih);
title("IH");
