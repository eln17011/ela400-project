clear;clc;close all;

webcameras = webcamlist;

if isempty(webcameras)
    msgbox('Please connect all 3 webcameras')  
end

if size(webcameras,1) == 3
  tic  
  mainfeed = webcam(1);
  left = webcam(2);
  right = webcam(3);
    while toc < 10
        
        liveimg = snapshot(mainfeed);
        leftimg = rgb2gray(snapshot(left));
        rightimg = rgb2gray(snapshot(right));

        mask = createMask(leftimg,rightimg);
        for i = 1:3
            liveimg = immultiply(uint8(mask),liveimg(:,:,i));
        end
      
        
        imshow(liveimg);
        
    end
else
    msgbox('Please connect all 3 webcameras!') 
end






