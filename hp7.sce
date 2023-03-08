clc;
a1=imread("");
a=double(a1);
[m,n]=size(a);
w=[-1 -1 -1;-1 8 -1;-1 -1 -1];
for i=20:m-1
    for j=20:n-1
        H(i,j)=[w(1)*a(i-1,j+1)+w(2)*a(i,j+1)+w(3)*a(i+1,j+1)+w(4)*a(i-1,j)+w(5)*a(i,j)+w(6)*a(i+1,j)+w(7)*a(i-1,j-1)+w(8)*a(i,j-1)+w(9)*a(i+1,j-1)]/9;
end
end
D=uint8(H);
figure(2);imshow(D);title("High pass image")      
figure(3);imshow(a1);title("Original image") 
