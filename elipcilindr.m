function [] = elipcilindr()
for i=1:1:1000
   x(i)=randn(1);
   y(i)=randn(1);
   z(i)=randn(1);
end
for i=1:1:1000   
   x1(i)= x(i)/sqrt(x(i)^2+y(i)^2);
   y1(i)= y(i)/sqrt(x(i)^2+y(i)^2);
   z1(i)= 0;
   if ((x1(i)^2+y1(i)^2) > 0)
       figure(11);
       plot3(x1(i),y1(i),z1(i),'* k' );
       hold on;
   end
end
figure(11);
sphere;
xlabel('x'); ylabel('y'); zlabel('z');
end