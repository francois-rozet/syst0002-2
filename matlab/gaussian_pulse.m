function y = gaussian_pulse(x, a)

y = exp(-((x/a).^2)/2)/(a*sqrt(2*pi));

end

