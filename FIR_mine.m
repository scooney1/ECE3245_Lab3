function y = FIR_mine(h,x)
%
% h = impulse response
% x = input
%
M = length(h);N = length(x);    % Assume N>M
%
% Initial outputs
%
for n=0:M-2
    y(n+1) = 0;
    for k=0:n
        y(n+1) = y(n+1) + h(k+1)*x(n+1-k);
    end
end
%
% Steady state
%
for n=M-1:N-1
    y(n+1) = 0;
    for k=0:M-1
        y(n+1) = y(n+1) + h(k+1)*x(n+1-k);
    end
end
end
