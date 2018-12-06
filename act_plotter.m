function [] = act_plotter(act_mat1,act_mat2,act_mat3)
sz=size(act_mat1);
figure
k=1;
for i=1:sz(1)
    subplot(8,8,k)
    plot(0.1:0.5:30,act_mat1(i,:),'LineWidth',2,'color','b')
    hold on;
    plot(0.1:0.5:30,act_mat2(i,:),'LineWidth',2,'color','b')
    hold on;
    plot(0.1:0.5:30,act_mat3(i,:),'LineWidth',2,'color','b')
    ax = gca; % current axes
    ax.FontSize = 12;
    ax.XLim = [0 30];
    ax.FontWeight = 'bold';
    k=k+1;
    if(rem(i,64)==0 && i>=64)
        k=1;
        figure
    end
end

    