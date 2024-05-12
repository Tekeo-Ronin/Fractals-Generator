function visualize_result(fractalName, color)

    folder = addpath("/outputFiles/");

    if ~isfolder(folder)
        mkdir(folder);
    end

    filename = sprintf('%s_%s.png', fractalName, color);
    full_path = fullfile(folder, filename);
    saveas(gcf, full_path);
end
