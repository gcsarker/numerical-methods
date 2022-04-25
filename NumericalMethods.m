%   Bisection Method           = 'bisection'
%   False Position Method      = 'falseposition'
%   Secant Method              = 'secant'
%   Newton Raphson Method      = 'newtonraphson'
%   Matrix Inverse Method      = 'matrix inverse'
%   Gauss Elimination Method   = 'gauss elimination'
%   Gauss Jordan Method        = 'gauss jordan'
%   Gauss Seidal Method        = 'gauss seidal'
%   Trapezoidal Method         = 'trapezoidal'
%   Simpson 1/3 method         = 'simpson13'
%   Simpson 3/8 method         = 'simpson38'
%   Picard's method            = 'picard'
%   Euler Method               = 'euler'
%   Runge Kutta Method 2 order = 'rk2'
%   Runge Kutta Method 4 order = 'rk4'

addpath(genpath('./algebraic-equations-solutions'));
addpath(genpath('./linear-system-of-equations'));
addpath(genpath('./numerical-integration'));
addpath(genpath('./ordinary-differential-equations'));
addpath(genpath('./utility'));

method = input('Enter Algorithm (in small letter): ','s');
n_sol = NumericalSolution(method);
