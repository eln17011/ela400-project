clear;clc;close all;

webcameras = webcamlist;

if isempty(webcameras)
    msgbox('Please connect all 3 webcameras')  
end

if size(webcameras,1) == 3
  tic  
    while toc < 10
        mainfeed = webcam(char(webcameras(1)));
        left = webcam(char(webcameras(2)));
        right = webcam(char(webcameras(3)));

        liveimg = snapshot(mainfeed);
        leftimg = rgb2gray(snapshot(left));
        rightimg = rgb2gray(snapshot(right));

        mask = createMask(leftimg,rightimg);

        final = immultiply(liveimg,mask);
        
        imshow(final);
    end
else
    msgbox('Please connect all 3 webcameras!') 
end






