


K = 1;
Wn = 200;
psi_1 = 0.2;
psi_2 = 0.7;
psi_3 = 1;
psi_4 = 2;

num = [k];
var_1 = (2* psi_1)/Wn;
var_2 = (2* psi_2)/Wn;
var_3 = (2* psi_3)/Wn;
var_4 = (2* psi_4)/Wn;
den_1 = [1/Wn^2 var_1 1];
den_2 = [1/Wn^2 var_2 1];
den_3 = [1/Wn^2 var_3 1];
den_4 = [1/Wn^2 var_4 1];

H_1 = tf(num,den_1);
H_2 = tf(num,den_2);
H_3 = tf(num,den_3);
H_4 = tf(num,den_4);
figure(4)
subplot(221),step(H_1)
subplot(222),step(H_2)
subplot(223),step(H_3)
subplot(224),step(H_4)

%calcule de depassement
D = (1.52 - 1)*100
%%%periode d'echantioll%%%%%%%%%%
var2 = 1 - (2*psi_2^2) + sqrt(1- (2* psi_2^2)^2 + 1);
Wc = Wn * sqrt(var2);

Te_min = 0.25/Wc
Te_max = 1.25/Wc
Te = (Te_max + Te_min) / 2

%%%%%%%echan%%%%%%%%%%%%%%%%%%
G1 = c2d(H_2,Te);
figure(5),step(G1,H_2)

%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%%%%%%%%%%%%%







