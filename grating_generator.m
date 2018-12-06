function [im1] = grating_generator(sp_freq,d_screen,res_screen)
im1 = zeros(227,227,3);
%d_screen is viewing distance in inces accordance with the PVD.
%res_screen is the resolution of the screen in pixels per inch.
new_freq = sp_freq * ((3.14 * d_screen * res_screen)/18000);
%temp = sinGrating([224 224], new_freq, 90, 0, 0.5, 0.2);
temp = sinConcentric([227 227], new_freq, 0, 0.5, 0.5);
im1(:,:,1) = temp;
im1(:,:,2) = temp;
im1(:,:,3) = temp;

