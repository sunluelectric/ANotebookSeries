x1_grid = -5:0.1:5;
x2_grid = -5:0.1:5;
[X1,X2] = meshgrid(x1_grid,x2_grid);
Y = (sin(X1) + X2 - 2).^2 + (X1 - 2*X2 - 0).^2;

surf(X1,X2,Y)
hold on
shading interp
alpha 0.5

xlabel('$x_1$', 'interpreter', 'latex')
ylabel('$x_2$', 'interpreter', 'latex')
zlabel('$y = f(x_1,x_2)$', 'interpreter', 'latex')