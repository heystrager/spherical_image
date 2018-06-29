function [] = parabcilindr()
for i=1:1:1000
   x(i)=randn(1);
   y(i)=randn(1);
   z(i)=randn(1);
end
for i=1:1:500   
   x1(i)= 1/sqrt(1+y(i)^2);
   y1(i)= y(i)/sqrt(1+y(i)^2);
   z1(i)= 0;
   if ((y1(i)^2) > -1)
       figure(15);
       plot3(x1(i),y1(i),z1(i),'* k' );
       hold on;
   end
end
for i=501:1:1000   
   x1(i)= -1/sqrt(1+y(i)^2);
   y1(i)= y(i)/sqrt(1+y(i)^2);
   z1(i)= 0;
   if ((y1(i)^2) > -1)
       figure(15);
       plot3(x1(i),y1(i),z1(i),'* k' );
       hold on;
   end
end
figure(15);
sphere;
xlabel('x'); ylabel('y'); zlabel('z');
end