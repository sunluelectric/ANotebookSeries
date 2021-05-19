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
axis([-3,3,-2,2,0,8])
grid on
view(-40,30)

figure
hold on
plot(1,0,'r.','markersize',20)
contour(X1,X2,Y,[0.7:0.5:5.2,5.3],'showtext','on')
xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
grid on

figure
hold on
surf(X1,X2,Y,'edgecolor','none','facecolor', 'flat')
alpha 0.3

coor = [-3,0,0;3,0,0;3,0,6;-3,0,6];
fill3(coor(:,1),coor(:,2),coor(:,3), 'k', 'FaceAlpha', 0.1)
plot3(x1_grid, zeros(length(x1_grid)),2*sin(x1_grid) + sin(0.5*x1_grid+pi) + sin(2*0)+3, 'r-', 'linewidth',1)
plot3([1,2],[0,0],[2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3,2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3+...
    2*cos(1)+0.5*cos(0.5*1+pi)], 'r--', 'linewidth',1)

coor = [1,-2,0;1,2,0;1,2,6;1,-2,6];
fill3(coor(:,1),coor(:,2),coor(:,3), 'k', 'FaceAlpha', 0.1)
plot3(1+zeros(length(x2_grid)),x2_grid,2*sin(1) + sin(0.5*1+pi) + sin(2*x2_grid)+3, 'b-', 'linewidth',1)
plot3([1,1],[0,1],[2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3,2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3+...
    2*cos(0)], 'b--', 'linewidth',1)

plot3(1,0,2*sin(1)+cos(0.5+pi/2)+sin(0)+3,'r.','markersize',20)
xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
zlabel('$y = f(x_1,x_2)$', 'interpreter', 'latex')
axis([-3,3,-2,2,0,8])
grid on
view(-40,30)

figure
hold on
surf(X1,X2,Y,'edgecolor','none','facecolor', 'flat')
alpha 0.3

yorigin = 2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3;
dyx1 = 2*cos(1)+0.5*cos(0.5*1+pi);
dyx2 = 2*cos(0);
coor = [0,-1,yorigin-dyx1-dyx2;
    2,-1,yorigin+dyx1-dyx2;
    2,1,yorigin+dyx1+dyx2;
    0,1,yorigin-dyx1+dyx2];
fill3(coor(:,1),coor(:,2),coor(:,3), 'k', 'FaceAlpha', 0.1)
plot3([1,2],[0,0],[2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3,2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3+...
    2*cos(1)+0.5*cos(0.5*1+pi)], 'r--', 'linewidth',1)
plot3([1,1],[0,1],[2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3,2*sin(1) + sin(0.5*1+pi)+sin(2*0)+3+...
    2*cos(0)], 'b--', 'linewidth',1)
plot3(1,0,2*sin(1)+cos(0.5+pi/2)+sin(0)+3,'r.','markersize',20)
xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
zlabel('$y = f(x_1,x_2)$', 'interpreter', 'latex')
axis([-3,3,-2,2,0,8])
grid on
view(-40,30)





