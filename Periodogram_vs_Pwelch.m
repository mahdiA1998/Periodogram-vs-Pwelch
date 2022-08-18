clc
clear
close all

load('s07.mat')

%% EEG Channel 16
EEG2 = data(1,16,:);
EEG2 = reshape(EEG2, [1,size(data,3)]);
subplot(2,1,1);
periodogram(EEG2);
subplot(2,1,2);
pwelch(EEG2);

%% EMG Channel 36
EMG = data(1,36,:);
EMG = reshape(EMG, [1,size(data,3)]);
subplot(2,1,1);
periodogram(EMG);
subplot(2,1,2);
pwelch(EMG);

%% PPG Channel 39
PPG = data(1,39,:);
PPG = reshape(PPG, [1,size(data,3)]);
subplot(2,1,1);
periodogram(PPG);
subplot(2,1,2);
pwelch(PPG);