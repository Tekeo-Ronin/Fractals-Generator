function set_visualization(color, thisTitle, x, y, img)

    figure;
    imagesc(x, y, img);
    colormap(color);
    colorbar;
    axis equal;
    title(thisTitle);

    waitforbuttonpress;
end
