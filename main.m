clear all
clc
     
sigamarange = [0.5*1e+02 *0.000000000019578  1.5*1e+02 *0.000000000019578];
gamma_1range = [0.5*1e+02 *0.000383868123497 1.5*1e+02 *0.000383868123497];

numSamples = 1000;

% random sampling
sigamavalue = rand(numSamples, 1) * (sigamarange(2) - sigamarange(1)) + sigamarange(1);
gamma_1value = rand(numSamples, 1) * (gamma_1range(2) - gamma_1range(1)) + gamma_1range(1);

% Calculate function results%run('err_in_data.m');
for k = 1:1000
error(k) = err_in_data(sigamavalue(k), gamma_1value(k));
end

% Draw a 3D scatter plot
figure;

scatter3(sigamavalue, gamma_1value, error', 'filled');
xlabel('\sigma');
ylabel('\gamma_1');
zlabel('error');
title('3D Parameter Relationship');

