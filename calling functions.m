

FromAssignment :
Given

   N=20;
   n=0;
   a=1;


Dirac:
x= Dirac (10,20)
title('dirac function')
stem(x)
xlabel('n')
ylabel('k-n')


Step:
x1 = step(10,20)
title('step function')
stem(x1)
xlabel('n')
ylabel('h(k-n)')

Ramp:

x2 = ramp(2,10,20)
title('ramp function')
stem(x2)
xlabel('n')
ylabel('p(k-n)')

Geometric:

x3 = geo(2,10,20)
title('geometric function')
stem(x3)
xlabel('n')
ylabel('g(k-n)')

Box:

x4 = box(3,10,20)
title('box function')
stem(x4)
xlabel('n')
ylabel('b(k-n)')

SinFunction:

x5 = sin(1,10,100)
title('sin function')
stem(x5)
xlabel('n')
ylabel('sin function with period one')


x5 = sin(2,10,1000)
title('sin function')
stem(x5)
xlabel('n')
ylabel('sin function with period two')

x5 = sin(2,10,30)
title('sin function')
stem(x5)
xlabel('n')
ylabel('sin function with period two and frequency of 30')


Exercise 2:

2.1

g1 = gaussian(1000);
 
g2 = gaussian(10000);

title('Histogram for gaussian')

2.2 

u1 = uniform(1000);

u2 = uniform(10000);

title('Histogram for uniform')

2.3

u3 = xcorr(g1);

figure;
plot(u3);
title('Gaussian Functions')
figure;
u4 = xcorr(g2);
plot(u4);
title('Gaussian Functions')


u3 = xcorr(u1);
figure;
plot(u3);
title('Uniform Functions')
u4 = xcorr(u2);
figure;
plot(u4);
title('Uniform Functions')



2.4

Threebinaryrandomsignals

s1 = round(rand(1,50));
s2 = round(rand(1,50));
s3 = round(rand(1,50));

% n, m and o, respectively, are the shifts in the three signals
n=50;
m=150;
o=250;


%Introducing shift (n, m or o) in the respective signals

a1 = zeros(1,400);
a2 = zeros(1,400);
a3 = zeros(1,400);


k=1;

for i = n:n+49
a1(i) = s1(k);
k=k+1;
end

k=1;

for i = m:m+49
a2(i) = s2(k);
k=k+1;
end

k=1;

for i = o:o+49
a3(i) = s3(k);
k=k+1;
end

%Plotting the three signals
t= 1:1:400;
stem(t,a1);
title('a1');
figure;

stem(t,a2);
title('a2');
figure;

stem(t,a3);
title('a3');


% Combining the three signals to make "cs" signal
cs = a1 + a2 + a3;
figure;
stem(t,cs);


%Calculation the Cross-Correlations of s1, s2 and s3 with cs
r1 = xcorr(cs,s1);
r2 = xcorr(cs,s2);
r3 = xcorr(cs,s3);

plot(r1); figure;
plot(r2); figure;
plot(r3);

end



