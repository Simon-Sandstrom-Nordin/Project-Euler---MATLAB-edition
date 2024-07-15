clc; clear; close all;

B = zeros(13);

% Black stones
B(2,1) = 1;
B(2,2) = 1;
B(2,4) = 1;
B(2,5) = 1;
B(3,4) = 1;

% White stones
B(3,1) = 2;
B(3,2) = 2;
B(4,2) = 2;
B(4,3) = 2;
B(4,4) = 2;
B(4,5) = 2;
B(3,5) = 2;
B(2,6) = 2;
B(3,7) = 2;

% figure('WindowState','maximized')
colormap([.9 .7 .4; 0 0 0; 1 1 1]);
axis equal
imagesc(B)
title("Original")

% Create a VideoWriter object
v = VideoWriter('board_animation.mp4', 'MPEG-4');
v.FrameRate = .5; % 1 frame per second
open(v);

% Capture the original frame
writeVideo(v, getframe(gcf));

% Perform rotations and capture frames
for rot = 1:4
    pause(2)
    B = rot90(B);
    axis equal
    imagesc(B)
    title("Rotation " + num2str(rot))
    writeVideo(v, getframe(gcf));
end

title("Original")
pause(2)

B = flipud(B);
axis equal
imagesc(B)
title("Flipped horizontally")
writeVideo(v, getframe(gcf));

for rot = 1:4
    pause(2)
    B = rot90(B);
    axis equal
    imagesc(B)
    title("FH: Rotation " + num2str(rot))
    writeVideo(v, getframe(gcf));
end

title("FH: Original")
pause(2)

B = flipud(B);
axis equal
imagesc(B)
title("Original")
writeVideo(v, getframe(gcf));
pause(2)

B = fliplr(B);
axis equal
imagesc(B)
title("Flipped vertically")
writeVideo(v, getframe(gcf));

for rot = 1:4
    pause(2)
    B = rot90(B);
    axis equal
    imagesc(B)
    title("FV: Rotation " + num2str(rot))
    writeVideo(v, getframe(gcf));
end

title("FV: Original")
pause(2)

B = fliplr(B);
axis equal
imagesc(B)
title("Original")
writeVideo(v, getframe(gcf));
pause(2)

% Close the video file
close(v);

disp('Video saved as board_animation.mp4');
