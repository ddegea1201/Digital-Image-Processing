clc;
orig=imread("");
original=rgb2gray(orig);
original=double(original);
[m,n]=size(original);
fc=3;
N=1;
a=round(m/2);
b=round(n/2);
H=zeros(m,n);
for i=1:m
    for j=1:n
        d=((i-a)^2+(j-b)^2)^0.5;
        H(i,j)=1/(1+((d/fc)^(2*N)));        
     end
end
original_freq=fftshift(fft2(original));
applpf=(original_freq).*H;
finalout=abs(ifft(applpf));
subplot(2,2,1); imshow(orig);title("Original")
subplot(2,2,2); imshow(H);title("Surf using imshow")
subplot(2,2,3); surf(H);title("surf in 3D")
subplot(2,2,4); imshow(uint8(finalout));title("Final Image")






