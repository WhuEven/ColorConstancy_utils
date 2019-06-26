function [white_R ,white_G ,white_B,output_data] = groundtruth(input_data,groundtruth_path,img_num)

dd = csvread(groundtruth_path,img_num,1,[img_num,1,img_num,3]);
white_R = dd(1);
white_G = dd(2);
white_B = dd(3);
output_data(:,:,1)=input_data(:,:,1)/(white_R*sqrt(3));
output_data(:,:,2)=input_data(:,:,2)/(white_G*sqrt(3));
output_data(:,:,3)=input_data(:,:,3)/(white_B*sqrt(3));