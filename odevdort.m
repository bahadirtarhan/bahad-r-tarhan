%%birinci soru
z=tf('s');
H=(8-4*(z^-1))/(z^-2+6*(z^-1)+8);
h=tf([-4 8],[1 6 8]);
syms z
F=(8-4*(z^-1))/(z^-2+6*(z^-1)+8);
iztrans(F);
sifir=zero(h)
kutup=pole(h)
zplane(sifir,kutup)
%%
%ikinci soru
R=tf('z');
Y=(4.43*(10^-4)+8.86*(10^-4)*R+4.43*(10^-4)*2*R)/(1-1.94*R+0.94*2*R);
X=(1-1.94*R+0.94*2*R);
H=Y/X;
impulse(H)
%%
%üçüncü soru
syms t
f =(4-4*exp(1)-2*t*cos(t)+2*exp(1)-2*t*sin(t))*heaviside(t);
laplace(f)
%%
%dördüncü soru
syms s
H=(s+5)/s*((s-2)^2);
ilaplace(H)
h=tf([1 5],[1 -4 4 0]);
sifir=zero(h)
kutup=pole(h)
zplane(sifir,kutup)
%%
%beþinci soru
x=[-2 0 -3 0 2 0 0 0 1 ];
h=[ 0 0 -2 0 0 -2 0 0 1];
y=conv(x,h);
stem(y)
%%
%altýncý soru
syms s
G(s)=5/s^2+6*s+5;
h=tf([5],[1 6 5]);
bode(h)
