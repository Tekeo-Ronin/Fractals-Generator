function mandelbrot_set(color)

    addpath("../visualization")

    thisTitle = "Mandelbrot set";

    resolution = 1000;
    x = linspace(-2, 1, resolution);
    y = linspace(-1.5, 1.5, resolution);

    [X, Y] = meshgrid(x, y);
    Z = X + 1i * Y;

    img = zeros(resolution);
    max_iter = 100;

    for n = 1:max_iter
        Z = Z.^2 + X + 1i * Y;
        mask = abs(Z) < 2;
        img = img + mask;
    end

    set_visualization(color, thisTitle, x, y, img);

end
