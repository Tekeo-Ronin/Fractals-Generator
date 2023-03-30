            % розмір зображення і кордони області
N = 600;
xmin = -2;
xmax = 1;
ymin = -1.5;
ymax = 1.5;

            % матриця пікселей
[X, Y] = meshgrid(linspace(xmin, xmax, N), linspace(ymin, ymax,N));
Z = X + 1i*Y;

            % ітеріруємо точки перебором
C = Z;
for k = 1:50
   Z = Z.^2 + C;
end


            % оприділяємо множество
M = (abs(Z) < 2);

            % виводимо результат
colormap(gray);
imagesc(M);
axis equal;
