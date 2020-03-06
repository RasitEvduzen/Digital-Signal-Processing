clc,clear all,close all;
% Morlet Wavelet Function Graph and Sliding X - axis
% Raþit EVDÜZEN
% 06-Mar-2020

load Data
set(gcf,'Position',[100 100 1720 900])
x = -5:0.01:5;
t1 = 0*ones(1,size(x,2));
t2 = 4*ones(1,size(x,2));
t3 = 8*ones(1,size(x,2));
data = [data - min(data)] / [max(data) - min(data)];
% PLOT
for i =-8:.1:8
    hold on,clf
    plot3(x,t1,normalize(data),'k','linewidth',1),axis([-5.5 5.5 -2 10 -5 6])
    grid on, hold on, xlabel('X - Axis'), ylabel('Y - Axis'), zlabel('Z - Axis'),title('Morlet Wavelet Simulation')
    plot3(x,t2,normalize(data),'k','linewidth',1),plot3(x,t3,normalize(data),'k','linewidth',1)
    y1 = [1/(pi)^1/4] .* [cos((x-i).*pi.*sqrt(2/log10(2)))] .* [exp(-((x-i).^2 / 2))];
    y2 = [1/(pi)^1/4] .* [cos((x-i).*2*pi.*sqrt(2/log10(2)))] .* [exp(-((x-i).^2 / 2))];
    y3 = [1/(pi)^1/4] .* [cos((x-i).*3*pi.*sqrt(2/log10(2)))] .* [exp(-((x-i).^2 / 2))];
    plot3(x,t1,y1*40,'r','LineWidth',2)
    plot3(x,t2,y2*40,'r','LineWidth',2)
    plot3(x,t3,y3*40,'r','LineWidth',2)
    drawnow
end


