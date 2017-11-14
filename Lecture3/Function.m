hold('on')
fn = @(x) x/2-sin(x)
fplot(fn, [1, 2])
root = Bisection(fn, 1, 2, 10 .^ -6)
fn = @(x) sin(x)
fplot(fn, [pi/6, 3*pi/4])
root = Bisection(fn, pi/6, 3*pi/4, 10 .^ -6)
fn = @(x) 4*x.^4-x.^3-28*x.^2-17*x+6
fplot(fn, [0, 1])
root = Bisection(fn, 0, 1, 10 .^ -6)
fn = @(x) cosh(x)+cos(x)-1
fplot(fn, [-5, 5])
root = Bisection(fn, -5, 5, 10 .^ -6)
hold('off')