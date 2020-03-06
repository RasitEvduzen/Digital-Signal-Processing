clc,clear all,close all;
% Morlet Wavelet Function Graph and Sliding X - axis
% Raþit EVDÜZEN
% 13-Jan-2020

load Data
set(gcf,'Position',[100 100 1720 900])
x = -5:0.01:5;
for j=1:5
    for i =-10:0.1:10
        clf
        y = [1/(pi)^1/4] .* [cos((x-i).*j*pi.*sqrt(2/log10(2)))] .* [exp(-((x-i).^2 / 2))];
        hold on,plot(linspace(-5,5,1001),data/10,'b','LineWidth',2)
        plot(x,y,'r','LineWidth',2),axis([-6 6 -.1 .1])
        title([{'Morlet Wavelet Function'},{'Sliding Window'},{'Wavelet Function Scale Parameter: ',num2str(j)}]),grid minor
        pause(0.0001)
    end
end
% While the Wavelet function sliding on the original signal, calculate the each signal aliasing.
% If the sliding and aliasing ending (convolution), then wavelet function
% return the initial condition and changing the wavelet scale parameter
% then re calculate convolution

