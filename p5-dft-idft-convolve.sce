clc ;
clear all;
close ;
x = input ( "Enter the value of x seq" ) ;
h = input ( "Enter the value of h seq" ) ;
m = length ( x ) ;
n = length ( h ) ;
N = n +m -1;
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];

f1 = fft( x )
disp("f1",f1)
f2 = fft( h )
f3 = f1 .* f2 ;
f4 = ifft ( f3 )
disp ( f4 ," C o n v ol u ti o n Sum R e s u l t DFT − IDFT method = ");
subplot (3 ,1 ,1) ;
plot2d3 ( x );
xtitle ( " Input sequence" );
subplot (3 ,1 ,2) ;
plot2d3 (h );
xtitle ( " Impulse sequence" ) ;
subplot (3 ,1 ,3) ;
plot2d3 ( f4 );
xtitle ( " REsultant sequence ") ;

