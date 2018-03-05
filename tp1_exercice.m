%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%modelisation d'un systeme%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%3.1%%%%%%%%%%%%%%%%%%%%%%%%%
R = 10000;
R1 = 12000;
C = 0.000247;
K=1;
taux =  C *(R + R1);
amda = R1 / (R + R1);
x = K * amda * taux;
num = [ x K];
den = [ taux 1 ];
H = tf(num,den);
%%%%%%%%%%%%%%%%%3.2%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1),step(10*H)

figure(2)
subplot(221),step(H)
subplot(222),bode(H)
subplot(223),nyquist(H)
subplot(224),nichols(H)
%%%%%%%%%%%%%%%%%%%%%%3.4%%%%%%%%%%%%%%%%%%%%
figure(3)
dim_2 = sqrt(taux * amda);
 
W = 1/dim_2;
t = 0:0.01:20;
n=size(t);
%%pour avoir une entrer sinsuidaler
u=2*sin(W * t);
lsim(H,u,t)
%%%%%%%%%%%%%%%%%%%%%%4%%%%%%%%%%%%%%%%%%%%
Te_min = 0.25 * taux;
Te_max = 1.25 * taux;
Te = (Te_min + Te_max)/2;

%%G1 = c2d(h,Te_min)
%%G2 = c2d(h,Te_max)
G3 = c2d(H,Te)
figure(4),step(G3,H)






