function y = IIR_simple(a,x)
%
% a = feedback coefficient
% x = input
%
N = length(x);
%
% Initial output
%
y(1) = x(1);
%
% Steady State
%
for n=2:N
    y(n) = x(n) + a*y(n-1);
end
end