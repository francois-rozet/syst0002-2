function dx = sysnl(t,x)

global k1 k2 d1 d2 K n

% Variables
var1=x(1);
var2=x(2);

% Differential equations
dx(1) = k1*(1 - (K^n)/(K^n + var2^n)) - d1*var1;
dx(2) = k2*var1 - d2*var2;

dx = dx';

