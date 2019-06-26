% shows example of illuminant estimation based on Grey-World, Shades of
% Gray, max-RGB, and Grey-Edge algorithm


%some example images
img_num = 1;
img_path = ['E:\e_data\',num2str(img_num),'.tif'];
input_im=double(imread(img_path));
groundtruth_path = 'E:\groundtruth.csv';
estimates_path = 'E:\estimates.csv'
%input_im=double(imread('cow2.jpg'));
%input_im=double(imread('dog3.jpg'));

figure(1);imshow(uint8(input_im));
title('input image');

% % Grey-World
% [wR,wG,wB,out1]=general_cc(input_im,0,1,0);
% figure(2);imshow(uint8(out1));
% title('Grey-World');
% 
% % max-RGB
% [wR,wG,wB,out2]=general_cc(input_im,0,-1,0);
% figure(3);imshow(uint8(out2));
% title('max-RGB');
% 
% % Shades of Grey
% mink_norm=5;    % any number between 1 and infinity
% [wR,wG,wB,out3]=general_cc(input_im,0,mink_norm,0);
% figure(4);imshow(uint8(out3));
% title('Shades of Grey');
% 
% % Grey-Edge
% mink_norm=5;    % any number between 1 and infinity
% sigma=2;        % sigma 
% diff_order=1;   % differentiation order (1 or 2)
% 
% [wR,wG,wB,out4]=general_cc(input_im,diff_order,mink_norm,sigma);
% figure(5);imshow(uint8(out4));
% title('Grey-Edge');

% Groundtruth
[wR,wG,wB,out5] = groundtruth(input_im,groundtruth_path,img_num);
figure(6);imshow(uint8(out5));
title('Groundtruth');

% % Our method
% [wR,wG,wB,out5] = groundtruth(input_im,estimates_path,img_num);
% figure(7);imshow(uint8(out5));
% title('Fineturned');
