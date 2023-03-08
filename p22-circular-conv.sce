clc ;
clear all;
g = input ( " e n t e r x s e q " ) ;
h = input ( "e n t e r h s e q " ) ;
n1 = length ( g ) ;
n2 = length ( h ) ;
n=max(n1,n2);
n3=n1-n2;
if(n3 >0)
    h=[h,zeros(1,n3)];
else
    g=[g,zeros(1,-n3)];
end
for p =1:n
    y(p)=0;
    for q=1:n
        j=p-q+1;
        if(j <=0)
            j=n+j;
        end
        y(p)=[y(p)+g(q)* h(j)];
    end
end
disp(y);
subplot(3,1,1);
plot(y);
/*
disp ( f4 ," C o n v ol u ti o n Sum R e s u l t DFT − IDFT method = ");
// f 4 = r e a l ( f 4 )
subplot (3 ,1 ,1) ;
plot2d3 ( x );
xtitle ( " Input sequence" );
;
subplot (3 ,1 ,2) ;
plot2d3 (h );
xtitle ( " Impulse sequence" ) ;
subplot (3 ,1 ,3) ;
plot2d3 ( f4 );
xtitle ( " REsultant sequence ") ;
// R e s u l t
*/
