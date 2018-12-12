function y = enter(x)

global f a w

gaussian = @(x)gaussian_pulse(x, a);
cosinus = @(x)cos(x * w);
step = @(x)val(x, 1);

if (f == 1)
    enter = gaussian;
elseif (f == 0)
    enter = cosinus;
elseif (f == 2)
    enter = step;
end

y = enter(x);

end

