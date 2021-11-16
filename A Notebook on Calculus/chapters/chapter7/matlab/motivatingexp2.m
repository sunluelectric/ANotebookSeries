% motivatingexp2.m
%%
close all

x = linspace(0,2*pi,100);
y = linspace(0,2*pi,100);
[X,Y] = meshgrid(x,y);
Z = Y.*cos(X+Y)+2*pi;

x_intersect = [2,2];
y_intersect = [0,2*pi];
[X_intersect,Y_intersect] = meshgrid(x_intersect,y_intersect);
Z_intersect = [0,4*pi;0,4*pi];

xb = 2*ones(size(x));
yb = y;
zb = yb.*cos(xb+yb)+2*pi;

figure
hold on
s = surf(X,Y,Z);
s.EdgeColor = 'none';
s.FaceColor = [0,0,0.8];
s.FaceAlpha = 0.2;
s_intersect = surf(X_intersect,Y_intersect,Z_intersect);
s_intersect.EdgeColor = 'none';
s_intersect.FaceColor = [0.8,0,0];
s_intersect.FaceAlpha = 0.2;
plot3(xb,yb,zb,'r-','linewidth',2)
plot3([2,2,2,2],[0,0,2*pi,2*pi],[0*cos(2+0)+2*pi,0,0,2*pi*cos(2+2*pi)+2*pi],'r-','linewidth',2)
grid on
xlabel('$x$', 'interpreter', 'latex')
ylabel('$y$', 'interpreter', 'latex')
zlabel('$z$', 'interpreter', 'latex')
