clc;
clear;
img_org = imread("charact2.bmp");%read the original image

%% 1.display the original image
figure("Name","the original image");
imshow(img_org);

%% 2.Implement 3x3 averaging mask and rotating mask.Try masks in other sizes.Make comments.
% apply 3x3 averaging mask on the original image
figure("Name","3x3 averaging mask image");
average_mask_3by3 = ones(3,3)./9; %create the mask
img_3by3average = imfilter(img_org,average_mask_3by3); %apply the mask
imshow(img_3by3average); %display the 3x3 averaged image
%There are not many differents.This one is a bit darker and blurry

% apply 3x3 rotating mask on the original image
img_3by3rotate = double(img_org);%initialize 3x3 rotating masked image
for i = 3:365
    for j = 3:988
        dispersion = 0;
        dispersion_min = 0;
        for k = 1:3
            for l = 1:3
                %calculate dispersion
                dispersion = (sum(img_3by3rotate(i,j,:)).^2 - sum(img_3by3rotate(i,j,:)).^2 / 9) / 9 ;
                
            end
        end
    end
end










