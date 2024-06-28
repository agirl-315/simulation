clear all
clc
     
sigamarange = [0.5*1e+02 *0.000000000019578  1.5*1e+02 *0.000000000019578];
crange = [0.5*1e+02 *0.306606137197565 1.5*1e+02 *0.306606137197565];

numSamples = 1000;

% 随机抽样参数
sigamavalue = rand(numSamples, 1) * (sigamarange(2) - sigamarange(1)) + sigamarange(1);
cvalue = rand(numSamples, 1) * (crange(2) - crange(1)) + crange(1);

% 计算函数结果%run('err_in_data.m');
for k = 1:1000
error(k) = err_in_data(sigamavalue(k), cvalue(k));
end

% 绘制参数关系图
figure;

% 绘制三维散点图
%subplot(2, 1, 1);
scatter3(sigamavalue, cvalue, error', 'filled');
xlabel('\sigma');
ylabel('c');
zlabel('error');
title('3D Parameter Relationship');

% 绘制参数平面投影图
% subplot(2, 1, 2);
% scatter(gamma_1value, kesaivalue, 'filled'); %[], error,
% xlabel('gamma_1');
% ylabel('kesai');
% title('Parameter Plane Projection');
% colorbar;