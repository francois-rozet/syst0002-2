syms p m

global k1 k2 d1 d2 f a w K n
d1 = 10^3/20;
d2 = 10^3/2;
k1 = d1;
k2 = d2;
f = 1;
a = 1/d1;
w = 10;
K = 1/2;
n = 5;

var1_init1 = 0;
var2_init1 = 0;

var1_init2 = 0.58;
var2_init2 = 0.5;

tinit = 0;
if (f == 1 || f == 2)
    tfinal = 10/d1;
elseif (f == 0)
    tfinal = 2 * 2 * 4/ abs(w);
end

[tl1, yl1] = ode45(@sysl,[tinit,tfinal],[var1_init1, var2_init1]);
d1 = d1 * 2;
d2 = d2 * 2;
[tl2, yl2] = ode45(@sysl,[tinit,tfinal],[var1_init1, var2_init1]);
d1 = 10^3/20;
d2 = 10^3/2;

inl1 = enter(tl1);
outl1 = yl1(:,2);
outl2 = yl2(:,2);

% [tl2, yl2] = ode45(@sysl,[tinit,tfinal],[var1_init2, var2_init2]);
% [tnl2, ynl2] = ode45(@sysnl,[tinit,tfinal],[var1_init2, var2_init2]);
% 
% inl2 = enter(tl2);
% outl2 = yl2(:,2);
% outnl2 = ynl2(:,2);

subplot(1, 2, 1);
plot(tl1,inl1,tl1,outl1,tl2,outl2);
xlabel('Temps (s)');
ylabel('Signaux');
legend('Entrée', 'd_1 et d_2', '2d_1 et 2d_2');
grid on

[tl1, yl1] = ode45(@sysl,[tinit,tfinal],[var1_init1, var2_init1]);
k1 = k1 * 2;
k2 = k2;
[tl2, yl2] = ode45(@sysl,[tinit,tfinal],[var1_init1, var2_init1]);
k1 = d1;
k2 = d2;

inl1 = enter(tl1);
outl1 = yl1(:,2);
outl2 = yl2(:,2);

subplot(1, 2, 2);
plot(tl1,inl1,tl1,outl1,tl2,outl2);
xlabel('Temps (s)');
ylabel('Signaux');
legend('Entrée', 'k_1 et k_2', '2k_1 et 2k_2');
grid on

% p = linspace(-0.45, 1.05, 100);
% m = 1 - (K^n + p.^n).^(-1) * K^n;

% figure(1)
% plot(p,m,p,p);
% xlabel('p');
% ylabel('m');
% legend('m = 1 - K^n / (K^n + p^n)', 'm = p');
% grid on

% solp = vpasolve(p == 1 - K^n / (K^n + p.^n), p);