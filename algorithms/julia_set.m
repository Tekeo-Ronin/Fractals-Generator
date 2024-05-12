function julia_set(color)

    resolution = 1000;
    x = linspace(-2, 2, resolution);
    y = linspace(-2, 2, resolution);
    
    [X, Y] = meshgrid(x, y);
    Z = X + 1i * Y;
    
    img = zeros(resolution);
    max_iter = 100;
    c = -0.8 + 0.156i;
    
    for n = 1:max_iter
        Z = Z.^2 + c;
        mask = abs(Z) < 2;
        img = img + mask;
    end
    
    figure;
    imagesc(x, y, img);
    colormap(color);
    colorbar;
    axis equal;
    title('Zbiór Julii');

	waitforbuttonpress;
end
