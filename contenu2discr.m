%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Programmation d'un systeme contenu en un systeme discret avec une periode
%Te
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
taux=1;
num=[k];
den=[taux 1];
h=tf(num,den);

Te1 = 0.1;
Te2 = 0.5;
Te3 = 2;

G1 = c2d(h,Te1)
G2 = c2d(h,Te2)
G3 = c2d(h,Te3)

figure(1),step(G1,G2,G3,h)
figure(2), impulse(G1,G2,G3,h)