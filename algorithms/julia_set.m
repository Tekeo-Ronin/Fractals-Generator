function julia_set()

    color = input('Enter the color of the fractal ("jet", "hot", "cool"): ', 's');

    addpath('/visualization/');

    fractalName = "Julia set";

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

    set_visualization(color, fractalName, x, y, img);

    choice = input('Do you want save a picture? (y/n): ');

    switch choice
        case y
            visualize_result(fractalName, color)
        case n
            disp('Goodbye!');
        otherwise
            disp('Goodbye!');

    end
