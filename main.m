gt=imread('C:\Users\KAIST\Desktop\MEE\Summer2018_Research\databaserelease2\refimgs\plane.bmp');
im_ff=imread('C:\Users\KAIST\Desktop\MEE\Summer2018_Research\databaserelease2\fastfading\img58.bmp');
im_jpg=imread('C:\Users\KAIST\Desktop\MEE\Summer2018_Research\databaserelease2\jpeg\img165.bmp');
im_ckb=imread('C:\Users\KAIST\Desktop\4xUNET4_7l11ssim2vggrelu3_1\UNET_output015.png');
im_gt=imread('C:\Users\KAIST\Desktop\22.png');
im1=imnoise(gt,'salt & pepper',0.1);
[act1,act2,loss,pksnr] = vgg_loss(gt,gt);
size_act1 = size(act1);
size_act2 = size(act2);
act1 = reshape(act1,[size_act1(1) size_act1(2) size_act1(4)]);
act2 = reshape(act2,[size_act2(1) size_act2(2) size_act2(4)]);
tsne_plot(act1,act2);


