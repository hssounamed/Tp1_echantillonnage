R = 510;
L = 1;
C = 0.47 * 10^-6;

num = [1];
den = [L*C R*C 1];

H = tf(num,den);
t = 0:0.0001:0.025;
n = size(t);
u = ones(n);
a = 1.05 * ones(n);
b = 0.95 * ones(n);
[ys,ts]=lsim(H,u,t);
plot(t,u,'-.',ts,ys,'--',t,a,t,b);

D = (1.527 - 1)*100
Wn = sqrt(1/L*C)
psi = (R * C * Wn)/2  
