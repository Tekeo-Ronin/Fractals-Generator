addpath(genpath(pwd));

disp('1. Mandelbrot set');
disp('2. Barnsley fern');
disp('3. Julia set');

choice = input('Select a fractal number: ');

switch choice
    case 1
        mandelbrot_set();
    case 2
        barnsley_fern();
    case 3
        julia_set();
    otherwise
        disp('Wrong fractal selection.');
end
