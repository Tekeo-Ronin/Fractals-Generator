function fern_visualization(color, fractalName, x, y)

    figure;
    plot(x, y, '.', 'MarkerSize', 1, 'MarkerEdgeColor', color);
    colorbar;
    axis equal;
    title(fractalName);

    waitforbuttonpress;
end
