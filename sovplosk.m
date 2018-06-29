function [] = sovplosk()
for i=1:1:500
   x(i)=randn(1);
   y(i)=randn(1);
   z(i)=randn(1);
end
for i=1:1:500   
   x1(i)= 0;
   y1(i)= 1;
   z1(i)= 0;
   figure(17);
   plot3(x1(i),y1(i),z1(i),'* k' );
   hold on;
end
figure(17);
sphere;
xlabel('x'); ylabel('y'); zlabel('z');
end