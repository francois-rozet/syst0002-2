function [l1, l2] = lambda(p)
global d1 d2

l1 = -(d1 + d2) + sqrt((d1 - d2)^2 + 4*d1*d2*epsilon(p));
l1 = l1 / 2;
l2 = -(d1 + d2) - sqrt((d1 - d2)^2 + 4*d1*d2*epsilon(p));
l2 = l2 / 2;

end

