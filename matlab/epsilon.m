function y = epsilon(p)
    global K n
    y = n * p^(n-1) * K^n / (K^n + p^n)^2;
end

