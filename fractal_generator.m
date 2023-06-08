function fractal_generator()
    disp('1. Zbiór Mandelbrota');
    disp('2. Paproć Barnsleya');
    disp('3. Zbiór Julii');
    
    choice = input('Wybierz liczbę fraktalną: ');
    
    switch choice
        case 1
            color = input('Wprowadź kolor fraktala (przykład, "jet", "hot", "cool"): ', 's');
            save_fractal_image('Zbiór Mandelbrota', color);
        case 2
            color = input('Wprowadź kolor fraktala (przykład, "red", "green", "blue"): ', 's');
            save_fractal_image('Paproć Barnsleya', color);
        case 3
            color = input('Wprowadź kolor fraktala (przykład, "jet", "hot", "cool"): ', 's');
            save_fractal_image('Zbiór Julii', color);
        otherwise
            disp('Niewłaściwy wybór fraktala.');
    end
end

fractal_generator();
