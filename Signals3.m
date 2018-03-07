%% Practicum 3
published = datestr(now,21)

%% Section 1
%% Part C
n = (0:1:49);
h = [ones(1,20) zeros(1,30)];h = (1/20)*h;
x = [ones(1,20) zeros(1,30)];
y = FIR_mine(h,x);
figure(1)
stem(n,y)
title('Output of FIR\_mine with 1/20*P_2_0');

%% Section 2
%% Part C
a = 1;n = (0:1:49);
x = [ones(1,20) zeros(1,30)];
y = IIR_simple(a,x);
figure(2)
stem(n,y)
title('Output of IIR\_simple with P_2_0');

%% Section 3
%% Part B
n = (0:1:10);
x = [ones(1,2) zeros(1,9)];
v = [1 -0.9];
s1 = FIR_mine(v,x);
figure(3)
stem(n,s1)
title('Response of v with P_2 as Input');
y = 0.9.^n;y(6:11) = 0;
s2 = FIR_mine(y,s1);
figure(4)
stem(n,s2)
title('First Equalizer Respone with P_2 as Input');

%% Part C,D,E
n = (0:1:10);a = 0.9;
x = [ones(1,2) zeros(1,9)];
v = [1 -0.9];
s3 = FIR_mine(v,x);
figure(5)
stem(n,s3)
title('Response of v with P_2 as Input');
s4 = IIR_simple(a,s3);
figure(6)
stem(n,s4)
title('Second Equalizer Response with P_2 as Input');

%% Section 4
%% Part B
load('lighthouse.mat');
show_img(xx);
title('Original Image')
load('lighthouse1.mat');
show_img(yy);
title('Blurred Image')
zz = zeros(326,426);
h = [1 -0.8];
for i=1:326
    zz(i,:) = FIR_mine(h,yy(i,:));
end
show_img(zz);
title('De-Blurred Image');