clear;clc;close all;

% webcameras = webcamlist;
% 
% if isempty(webcameras)
%     msgbox('Please connect all 3 webcameras')  
% end

%if size(webcameras,1) == 3
   
  mainfeed = webcam('USB Camera');
  mainfeed.Resolution = '640x480';
  left = webcam('USB2.0 PC CAMERA');
  right = webcam('Lenovo EasyCamera');
  tic 
  ind = 1;
    while toc < 10
        
        liveimg = snapshot(mainfeed);
        for i = 1:100000
            
        end
        
        leftimg = rgb2gray(snapshot(left));
        for i = 1:100000
            
        end
        
        rightimg = rgb2gray(snapshot(right));
        for i = 1:100000
            
        end
%         mask = createMask(leftimg,rightimg);
%         for i = 1:3
%             liveimg = immultiply(uint8(mask),liveimg(:,:,i));
%         end
      
        
        %imshow(liveimg);
        imwrite(liveimg, strcat('liveimg',num2str(ind),'.png'))
        imwrite(leftimg, strcat('leftimg',num2str(ind),'.png'))
        imwrite(rightimg, strcat('rightimg',num2str(ind),'.png'))
        ind = ind + 1;
        
    end
%else
%    msgbox('Please connect all 3 webcameras!') 
%end






