[x, y] = generate_fractal(50000);
M = generate_mandelbrot(600, -2, 1, -1.5, 1.5);

figure;
subplot(1,2,1);
scatter(x, y, 1, '.');
axis off;

subplot(1,2,2);
colormap(spring);
imagesc(M);
axis equal;
axis off;
waitforbuttonpress;
