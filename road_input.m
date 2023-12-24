%========================================================================================================
% Author: Carl Larsson
% Description: simulates the road input
%========================================================================================================
%% Road input
%------------------------------------------------------------------------------------------------
function F_r = road_input(t)
% 0-10km/h
if t<10
    F_r = randi([0 1000],1,1)*sin(0.8*t + 0) + randi([0 1000],1,1)*cos(0.8*t+0) + randi([0 1000],1,1)*sin(rand(1)*t+rand(1));
% Speed bumps
elseif t == 10 || t == 40 || t == 80 || t == 90
    F_r = 400000;
% 10-20km/h    
elseif t>10 && t<20
    F_r = randi([0 4000],1,1)*sin(2.4*t + 0) + randi([0 4000],1,1)*cos(2.4*t+0) + randi([0 4000],1,1)*sin(rand(1)*t+rand(1));
% 20-30km/h
elseif t>20 && t<30
    F_r = randi([0 6000],1,1)*sin(4*t + 0) + randi([0 6000],1,1)*cos(4*t+0) + randi([0 6000],1,1)*sin(rand(1)*t+rand(1));
% 30-40km/h
elseif t>30 && t<40
    F_r = randi([0 9000],1,1)*sin(5.6*t + 0) + randi([0 9000],1,1)*cos(5.6*t+0) + randi([0 9000],1,1)*sin(rand(1)*t+rand(1));
% 40-50km/h
elseif t>40 && t<50
    F_r = randi([0 11000],1,1)*sin(7.1*t + 0) + randi([0 11000],1,1)*cos(7.1*t+0) + randi([0 11000],1,1)*sin(rand(1)*t+rand(1));
% 50-60km/h
elseif t>50 && t<60
    F_r = randi([0 13000],1,1)*sin(8.7*t + 0) + randi([0 13000],1,1)*cos(8.7*t+0) + randi([0 13000],1,1)*sin(rand(1)*t+rand(1));
% 60-70km/h
elseif t>60 && t<70
    F_r = randi([0 16000],1,1)*sin(10.3*t + 0) + randi([0 16000],1,1)*cos(10.3*t+0) + randi([0 16000],1,1)*sin(rand(1)*t+rand(1));
% 70-80km/h
elseif t>70 && t<80
    F_r = randi([0 18000],1,1)*sin(11.9*t + 0) + randi([0 18000],1,1)*cos(11.9*t+0) + randi([0 18000],1,1)*sin(rand(1)*t+rand(1));
% 80-90km/h
elseif t>80 && t<90
    F_r = randi([0 21000],1,1)*sin(13.5*t + 0) + randi([0 21000],1,1)*cos(13.5*t+0) + randi([0 21000],1,1)*sin(rand(1)*t+rand(1));
% 90-100km/h
elseif t>90 && t<100
    F_r = randi([0 23000],1,1)*sin(15.1*t + 0) + randi([0 23000],1,1)*cos(15.1*t+0) + randi([0 23000],1,1)*sin(rand(1)*t+rand(1));
% >100km/h
elseif t>100 && t<150
    F_r = randi([0 26000],1,1)*sin(16.7*t + 0) + randi([0 26000],1,1)*cos(16.7*t+0) + randi([0 26000],1,1)*sin(rand(1)*t+rand(1));
else
    F_r = 0;
end
end
%------------------------------------------------------------------------------------------------