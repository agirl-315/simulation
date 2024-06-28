clear all
clc
     
sigamarange = [0.5*1e+02 *0.000000000019578  1.5*1e+02 *0.000000000019578];
crange = [0.5*1e+02 *0.306606137197565 1.5*1e+02 *0.306606137197565];

numSamples = 1000;

% random sampling
sigamavalue = rand(numSamples, 1) * (sigamarange(2) - sigamarange(1)) + sigamarange(1);
cvalue = rand(numSamples, 1) * (crange(2) - crange(1)) + crange(1);

% Calculate function results%run('err_in_data.m');
for k = 1:1000
error(k) = err_in_data(sigamavalue(k), cvalue(k));
end

% draw a 3D scatter plot
figure;


scatter3(sigamavalue, cvalue, error', 'filled');
xlabel('\sigma');
ylabel('c');
zlabel('error');
title('3D Parameter Relationship');
