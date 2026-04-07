function y = clampHelper(x)
    x(x < 0) = 0;
    x(x > 1) = 1;
    y = x;
end