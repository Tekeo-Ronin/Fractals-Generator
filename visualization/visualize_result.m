function visualize_result(fractalName, color)

    chosenDir = uigetdir('', 'Choose a folder to save');

    if chosenDir == 0
        disp('Save canceled');
    else
        filename = sprintf('%s_%s.png', fractalName, color);
        full_path = fullfile(chosenDir, filename);
        saveas(gcf, full_path);
        disp(['Image saved to ' full_path]);
    end

end
