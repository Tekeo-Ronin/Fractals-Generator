function barnsley_fern()

    color = input('Enter the color of the fractal ("red", "green", "blue"): ', 's');

    addpath("../visualization");

    fractalName = "Barnsley fern";

    iterations = 50000;
    x = zeros(1, iterations);
    y = zeros(1, iterations);
    x(1) = 0;
    y(1) = 0;

    for n = 2:iterations
        r = rand();

        if r <= 0.01
            x(n) = 0;
            y(n) = 0.16 * y(n - 1);
        elseif r <= 0.86
            x(n) = 0.85 * x(n - 1) + 0.04 * y(n - 1);
            y(n) = -0.04 * x(n - 1) + 0.85 * y(n - 1) + 1.6;
        elseif r <= 0.93
            x(n) = 0.20 * x(n - 1) - 0.26 * y(n - 1);
            y(n) = 0.23 * x(n - 1) + 0.22 * y(n - 1) + 1.6;
        else
            x(n) = -0.15 * x(n - 1) + 0.28 * y(n - 1);
            y(n) = 0.26 * x(n - 1) + 0.24 * y(n - 1) + 0.44;
        end

    end

    fern_visualization(color, fractalName, x, y);

    choice = input('Do you want save a picture? (y/n): ');

    switch choice
        case y
            visualize_result(fractalName, color)
        case n
            disp('Goodbye!');
        otherwise
            disp('Goodbye!');

    end
