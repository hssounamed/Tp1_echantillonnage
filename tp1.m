num = [1];
den = [2 1];
H = tf(num,den)
%step c'est la reponse indicielle
figure(1),step(2*H)

%2eme methode de tracage

figure(2)
t=0:0.1:30;
n=size(t);
u=2*ones(n);
%ones est une matrice de 1 pour avoir un vectuer de meme taille de n
lsim(H,u,t)

%reponse d'une rampe

figure(3)
t=0:0.1:20;
n=size(t);
u=2*t;
[ys,ts]=lsim(H,u,t)
%ys pour associer la sortie a cette variable pour l'utiliser dans plot
plot(t,u,'-.',ts,ys,'--');
legend('entre u','sortie  y')

%representation fréquentielle

figure(4)
subplot(221),step(H)
subplot(222),bode(H)
subplot(223),nyquist(H)
subplot(224),nichols(H)







