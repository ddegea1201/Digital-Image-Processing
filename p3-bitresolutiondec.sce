clear all;
close all;
x=imread("");
imshow(x);
[r c s]=size(x);
disp([r c s]);
m=max(max(max(x)));
disp(m);
b=[2 3 4];
for i=1:length(b)
    d=2^b(i);
    z=round(x/d);
    figure
    imshow(z*d)
end
