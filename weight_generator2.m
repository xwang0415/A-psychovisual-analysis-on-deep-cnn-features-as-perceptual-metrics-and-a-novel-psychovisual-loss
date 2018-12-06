function [VFSS,weights,act_mat] = weight_generator2(net,layer,fmaps)
maps = fmaps;
act_mat = zeros(maps,60);
VFSS = zeros(maps,1);
count = 1;
csf = CSF(0.1:0.5:30);
for f = 0.1:0.5:30
    grating = grating_generator(f,103.35,89.7);
    %grating = grating_generator(f,120.4,107.16);
    act = activations(net,grating,layer,'OutputAs','channels');
    for m = 1:maps
        act_mat(m,count) = mean(mean(act(:,:,m)));
    end
    count = count + 1;
end

for j = 1:maps
    grad = abs(gradient(act_mat(j,:)));
    VFSS(j,1) = sum(csf.*grad);
end
VFSS(isnan(VFSS))=0;
weights = VFSS./ norm(VFSS(:),1);
%weights(find(weights>0.3375))=0; 
%weights(find(weights~=0))=1;



