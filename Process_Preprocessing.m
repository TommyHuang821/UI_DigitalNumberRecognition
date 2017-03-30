function garyimage=Process_Preprocessing(imdata)
% 1.convert RGB image to gary image
% 2. resize the image to 28*28
%
garyimage=mean(imdata,3);
garyimage=imresize(garyimage,[28 28]);
