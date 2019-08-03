% 
% for i=1:1000:10000
%     plot(x(1:100),T(i,:));
%     hold on;
% end;
% xlabel('Length (in m)');
% ylabel('Temperature in K');
[xx,yy]=meshgrid(x(1:100),t(1:10000));
surf(xx,yy,T)
colormap('jet')
shading interp
xlabel('X (in m)')
ylabel('Time (in s)')
title('Temperature (in K)');