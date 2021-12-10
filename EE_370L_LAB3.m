%% LAB 3: Basics of Control Systems in MATLAB and Simulink
%  Joshua Coleman
%  EE-370l: Control Systems Labratory 
%  CSULB: College of Engineering
%  Sept. 27, 2019
%  Version 1.0
%% 2.1.1 Roots and Polynomial Operations

clear;
clc;

%_Expanded polynomial expressions__________________________________________

E1 = [3 7 2 9 20 6 10];
E2 = [3 6 1 8 19 5 9];
E3 = E1 + E2;
E4 = E1 - E2;
E5 = E1.*E2;

a = roots(E1);
roots(E2);
roots(E3);
roots(E4);
roots(E5)


%% 2.1.2 Coefficients

% s = tf('s');

clear;
clc;

roots = [-7 -9 -5 -4 -2 0];

poly(roots)

%% 2.1.3 Zpk to Expanded Form
clear;
clc;

Gain = 20;
Ns = [-2 -3 -6 -8];
Ds = [0 -7 -9 -10 -15];



Ts1 = tf(poly(Ns),poly(Ds))
ZPKForm = zpk(Ns,Ds,Gain)

%% 2.1.4 Expanded Form to ZPK
clear;
clc;



Ns_to_z = [1 17 99 22 140];         %numberator coefficient vector
Ds_to_p = [1 32 36 12 70 1];        %denominator coefficient vector

Ts2 = tf(Ns_to_z,Ds_to_p)  %expanded form of transfer f(x)


% ZpkForm = zpk(Ns_to_z,Ds_to_p,1)    %zpk form of transfer f(x)
zpk(roots(Ns_to_z),roots(Ds_to_p),1)

%% 2.1.5 Transfer Function Operations

Ts3 = Ts1 + Ts2

Ts4 = Ts1 - Ts2

Ts5 = Ts1*Ts2

Ts6 = Ts1/(1+ Ts1*Ts2)

%% 2.1.6 Partial Fraction Expansion

a7 = [5,10];

b7 = [1 8 15 0];
Ts7 = tf(a7,b7)

[r7, p7, k7] = residue(a7,b7)

%==========================================================================

a8 = [5,10];

b8 = [1 6 9];

Ts8 = tf(a8,b8)

[r8, p8, k8] = residue(a8,b8)

%==========================================================================

a9 = [5,10];

b9 = [1 6 34];

Ts9 = tf(a9,b9)

[r9, p9, k9] = residue(a9,b9)

%% 2.1.7 Inverse Laplace

clc
clear

syms s

Tf7 = (5*s +10)/(s^3 + 8*s^3 +15*s);

xx = ilaplace(Tf7)
%==========================================================================


Tf8 = (5*s +10)/(s^2 + 6*s + 9);

yy = ilaplace(Tf8)

%==========================================================================

Tf9 = (5*s +10)/(s^2 + 6*s + 34)

zz = ilaplace(Tf9)

%% 2.2.1 Plotting With MATLAB

clear;
clc;

z = [1 1];
p = [1 1 1];

Gs1_zpk = zpk(z,p,1)
Gs1_exp = tf(z,p)

figure(1);
bode(Gs1_exp);

figure(2);
step(Gs1_exp);

figure(3);
pzmap(Gs1_exp)
%%

clear;
clc;

z = [1 2];
p = [2 8 4];

Gs2_zpk = zpk(z,p,1)
Gs2_exp = tf(z,p)

figure(1);
bode(Gs2_exp);

figure(2);
step(Gs2_exp);

figure(3);
pzmap(Gs2_exp)
%%
clear;
clc;

z = [3 2 1];
p = [4 3 2 1];

Gs3_zpk = zpk(z,p,1)
Gs3_exp = tf(z,p)

figure(1);
bode(Gs3_exp);

figure(2);
step(Gs3_exp);

figure(3);
pzmap(Gs3_exp);












