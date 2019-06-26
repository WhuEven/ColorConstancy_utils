function [output_data] = groundtruth_save()


for img_num=87:568
    dd = csvread('E:\groundtruth.csv',img_num,1,[img_num,1,img_num,3]);
    white_R = dd(1);
    white_G = dd(2);
    white_B = dd(3);
    img_path = ['E:\e_data\',num2str(img_num),'.tif']
    input_data = double(imread(img_path))
    output_data(:,:,1)=input_data(:,:,1)/(white_R*sqrt(3));
    output_data(:,:,2)=input_data(:,:,2)/(white_G*sqrt(3));
    output_data(:,:,3)=input_data(:,:,3)/(white_B*sqrt(3));
    out_image = uint8(output_data);
    imwrite(out_image,['E:\groundtruth\',num2str(img_num),'.tif']);
end