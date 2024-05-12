function set_visualization(color, fractalName, x, y, img)

    figure;
    imagesc(x, y, img);
    colormap(color);
    colorbar;
    axis equal;
    title(fractalName);

    waitforbuttonpress;
end
