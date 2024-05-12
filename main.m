

function main()
    disp('1. Mandelbrot set');
    disp('2. Barnsley fern');
    disp('3. Julia set');
    
    choice = input('Select a fractal number: ');
    
    switch choice
        case 1
            color = input('Enter the color of the fractal ("jet", "hot", "cool"): ', 's');
            mandelbrot_set(color);
        case 2
            color = input('Enter the color of the fractal ("red", "green", "blue"): ', 's');
            barnsley_fern(color);
        case 3
            color = input('Enter the color of the fractal ("jet", "hot", "cool"): ', 's');
            julia_set(color);
        otherwise
            disp('Wrong fractal selection.');
    end
end

fractal_generator();
