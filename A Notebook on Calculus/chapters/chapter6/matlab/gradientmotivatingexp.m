x1_grid = -3:0.1:3;
x2_grid = -2:0.1:2;
[X1,X2] = meshgrid(x1_grid,x2_grid);
Y = 2*sin(X1) + sin(0.5*X1+pi) + sin(2*X2);
Y = Y + 3;

figure
hold on
surf(X1,X2,Y)
plot3(1,0,2*sin(1)+cos(0.5+pi/2)+sin(0)+3,'r.','markersize',20)
xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
zlabel('$y = f(x_1,x_2)$', 'interpreter', 'latex')
grid on

figure
hold on
plot(1,0,'r.','markersize',20)
contour(X1,X2,Y,[0.7:0.5:5.2,5.3],'showtext','on')
xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
grid on