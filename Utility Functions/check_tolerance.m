% if c = 0 the difference is greater than the tolerance; iterate
% if c = 1 the difference is smaller than the tolerance; stop iteration.

function c = check_tolerance(a,b,tolerance)
    tol = tolerance;
    c = 0;
    if abs(a-b)<tol
        c = 1;
    end
end
    