function [an] = problem1(N,l,a)
% N is the number of trials
% l is the length of needles
% a is the length of the parallel lines
d = 0.5*rand(1,N);
theta = rand(1,N)*0.5*pi;
k = sum(d<0.5*l*sin(theta));
an = (2*N*l)/(k*a);