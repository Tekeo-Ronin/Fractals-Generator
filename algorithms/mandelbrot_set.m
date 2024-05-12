function mandelbrot_set()

    color = input('Enter the color of the fractal ("jet", "hot", "cool"): ', 's');

    addpath("../visualization")

    fractalName = "Mandelbrot set";

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

    set_visualization(color, fractalName, x, y, img);

    choice = input('Do you want save a picture? (y/n): ');

    switch choice
        case 'y'
            visualize_result(fractalName, color)
        case 'n'
            disp('Goodbye!');
        otherwise
            disp('Goodbye!');

    end
