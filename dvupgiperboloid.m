function [] = dvupgiperboloid()
for i=1:1:1000
   x(i)=randn(1);
   y(i)=randn(1);
   z(i)=randn(1);
end
for i=1:1:500   
   x1(i)= x(i)/sqrt(2*x(i)^2+2*y(i)^2+1);
   y1(i)= y(i)/sqrt(2*x(i)^2+2*y(i)^2+1);
   z1(i)= -sqrt(x(i)^2+y(i)^2+1)/sqrt(2*x(i)^2+2*y(i)^2+1);
   if ((x1(i)^2+y1(i)^2) >= -0.5)
       figure(7);
       plot3(x1(i),y1(i),z1(i),'* k' );
       hold on;
   end
end
for i=501:1:1000   
   x1(i)= x(i)/sqrt(2*x(i)^2+2*y(i)^2+1);
   y1(i)= y(i)/sqrt(2*x(i)^2+2*y(i)^2+1);
   z1(i)= sqrt(x(i)^2+y(i)^2+1)/sqrt(2*x(i)^2+2*y(i)^2+1);
   if ((x1(i)^2+y1(i)^2) >= -0.5)
       figure(7);
       plot3(x1(i),y1(i),z1(i),'* k' );
       hold on;
   end
end
figure(7);
sphere;
xlabel('x'); ylabel('y'); zlabel('z')
end