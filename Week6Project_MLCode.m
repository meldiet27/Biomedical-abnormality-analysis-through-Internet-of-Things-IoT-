%Analysis of Seizure:  from bonn data
fs = 173.61    ;  % fs  
T = 1/fs;         % sampling rate or frequency
load('Z100.mat')
y1=Z100;
N =length(y1); ls = size(y1); % find the length of the data per second
tx =[0:length(y1)-1]/fs;% Make time axis for EEG signal
fx = fs*(0:N/2-1)/N;   %Prepare freq data for plot


%The quadratic mean of the second column is:
%%%%
d = diff (y1);
g = diff (d);
so = rms(y1);
s1 = rms(d);
s2 = rms (g);
%%%%%%%%%%%%%%%%%
signal_complexity = sqrt((s2^2/s1^2) - (s1^2/so^2))
signal_mobility = s1/so

thingSpeakWrite(2606684,[signal_complexity],'Location',[1,2,3],'WriteKey','N7BNABF0GRPY7T6W')