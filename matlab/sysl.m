function dx = sysl(t,x)

global k1 k2 d1 d2

% Variables
var1=x(1);
var2=x(2);

% Differential equationsbd
dx(1) = k1*enter(t) - d1*var1;
dx(2) = k2*var1 - d2*var2;

dx = dx';