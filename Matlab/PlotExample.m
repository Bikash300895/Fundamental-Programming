clear all; close all; clc

x1 = -10: 0.1: 10;
y1 = sin(x1);

x2 = linspace(-10, 10, 64);
% Component wise multiplication .*
y2 = x2.*sin(x2);

plot(x1, y1, 'linewidth',2), hold on;
plot(x2, y2, 'm:d');

xlabel('x label');
ylabel('y label');
title('My graph','fontsize',15);

legend('data 1', 'data 2', 'location', 'best');