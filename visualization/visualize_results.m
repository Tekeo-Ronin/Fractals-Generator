function save_fractal_image(fractal_name, color)
    switch fractal_name
        case 'Zbiór Mandelbrota'
            mandelbrot(color);
        case 'Paproć Barnsleya'
            barnsley_fern(color);
        case 'Zbiór Julii'
            julia_fractal(color);
        otherwise
            disp('Niewłaściwy wybór fraktala.');
            return;
    end
    
    folder = fullfile(pwd, 'image');
    
    if ~isfolder(folder)
        mkdir(folder);
    end
    
    filename = sprintf('%s_%s.png', fractal_name, color);
    full_path = fullfile(folder, filename);
    saveas(gcf, full_path);
end
