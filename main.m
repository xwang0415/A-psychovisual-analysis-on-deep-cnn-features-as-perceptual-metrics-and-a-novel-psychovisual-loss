net = vgg16; %you can select a pretrained network avaliable on MATLAB(VGG-16, VGG-19 etc) or train your own network.
layer = 'relu3_2';  %you need to select a layer. The list of layers with their dimensions is provided in net.Layers.
fmams = 256; %the number of feature maps in the selected layer, provided in net.Layers.
[VFSS,weights,act_mat] = weight_generator2(net,layer,fmaps);
%The function returns the VFSS of each feature map, normalized VFSS -
%weights and spatial frequency vs mean activation curves.
%The weights can be saved in a .mat file and used for loss functions in
%pytorch, tensorflow etc. 
act_plotter(act_mat,act_mat,act_mat); %plotting activations vs spatial frequency.
