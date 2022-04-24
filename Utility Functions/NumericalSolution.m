function n_sol = NumericalSolution(method)
    syms x y z;
    if (strcmp(method,'bisection'))
        eqn = input('Enter Function Expression: ');
        min = input('Enter minimum value of range: ');
        max = input('Enter maximum value of range: ');
        iter = input('Enter Number of Iterations: ');
        tolerance = input('Enter Tolerance: ');
        n_sol = bisection(min,max,iter,tolerance,eqn);
        fprintf('Numerical Solution using Bisection Method : %f\n',n_sol);
        
    elseif (strcmp(method,'false position'))
        eqn = input('Enter Fuction Expression: ');
        min = input('Enter minimum value of range: ');
        max = input('Enter maximum value of range: ');
        iter = input('Enter number of Iterations: ');
        tolerance = input('Enter Tolerance: ');
        n_sol = falseposition(min,max,iter,tolerance,eqn);
        fprintf('Numerical Solution using FalsePosition Method : %f\n',n_sol);
    
    elseif (strcmp(method,'secant'))
        eqn = input('Enter Function Expression: ');
        x0 = input('Enter initial minimum approximation (X0): ');
        x1 = input('Enter initial Maximum approximation (X1): ');
        iter = input('Enter number of interations: ');
        tolerance = input('Enter tolerance: ');
        n_sol = secant(x0,x1,iter,tolerance,eqn);
        fprintf('Numerical Solution using Secant Method : %f\n',n_sol);
    
    elseif (strcmp(method,'newton raphson'))
        eqn = input('Enter Function Expression: ');
        ini_value = input('Enter initial Approximation Value: ');
        iter = input('Enter number of iterations: ');
        tolerance = input('Enter tolerance: ');
        n_sol = newtonraphson(eqn,ini_value,iter,tolerance);
        fprintf('Numerical Solution using Newton Raphson Method : %f\n',n_sol);
        
    elseif (strcmp(method, 'matrix inverse'))
        n =input('Enter Number of Equations : ');
        lin_sol = matrix_inversion(n);
        for i = 1:1:n
            fprintf('\nVariable %i = %f',i,double(lin_sol(i)));
        end
        n_sol = lin_sol;
        
    elseif (strcmp(method, 'gauss elimination'))
        n =input('Enter Number of Equations : ');
        lin_sol = gauss_elimination(n);
        for i = 1:1:n
            fprintf('Variable %i = %f\n',i,double(lin_sol(i)));
        end
        n_sol = lin_sol;    
    
        
    elseif (strcmp(method, 'gauss jordan'))
        n =input('Enter Number of Equations : ');
        lin_sol = gauss_jordan(n);
        for i = 1:1:n
            fprintf('Variable %i = %f\n',i,double(lin_sol(i)));
        end
        n_sol = lin_sol;
    
    elseif (strcmp(method, 'gauss seidal'))
        n = input('Number of Linear Equations: ');
        P = input('Enter intial Guess Vector: ');
        N = input('Enter no of iterations: ');
        lin_sol = gauss_seidal_func(n,P,N);
        for i = 1:1:n
            fprintf('Variable %i = %f\n',i,double(lin_sol(i)));
        end
        n_sol = lin_sol;    
        
    elseif (strcmp(method, 'trapezoidal'))
        func  = input('Enter fuction for integration: ');
        a = input('Define min value of interval: ');
        b = input('Define max value of interval: ');
        n = input('Enter number of intervals: ');
        n_sol = trapezoidal_rule(func,a,b,n);
        fprintf('The numerical integration of the function %f \n',n_sol);
    
    elseif (strcmp(method, 'simpson13'))
        func  = input('Enter fuction for integration: ');
        a = input('Define min value of interval: ');
        b = input('Define max value of interval: ');
        n = input('Enter number of intervals: ');
        n_sol = simpson13(func,a,b,n);
        fprintf('The numerical integration of the function %f \n',n_sol);
        
    elseif (strcmp(method, 'simpson38'))
        func  = input('Enter fuction for integration: ');
        a = input('Define min value of interval: ');
        b = input('Define max value of interval: ');
        n = input('Enter number of intervals: ');
        n_sol = simpson38(func,a,b,n);
        fprintf('The numerical integration of the function %f \n',n_sol);
    
    elseif (strcmp(method, 'euler'))
        ode  = input('Enter Ordinary Differential Equation: ');
        x0 = input('Enter min value of interval (x_min): ');
        y0 = input('Function value at x_min: ');
        xn = input('Max value of interval (x_max): ');
        h = input('Step size: ');
        n = ceil((xn-x0)/h);
        ode_exact = input('Enter Eq of Exact Solution (press ENTER if None): ');
        fprintf('The numerical solution of the ODE at: \n');

        ode_sol = euler_func(ode,x0,y0,h,n,ode_exact);
        n_sol =ode_sol;
    
    elseif (strcmp(method, 'picard'))
        ode  = input('Enter Ordinary Differential Equation: ');
        x0 = input('Enter initial x: ');
        y0 = input('Function value at x: ');
        xn = input('Evaluate function value at (x_n): ');
        n = input('Numer of Iterations: ');
        ode_sol = picard(ode,x0,y0,xn,n);
        n_sol =ode_sol;
        
    elseif (strcmp(method, 'rk2'))
        ode = input('Enter your function: '); %right hand side of ODE
        x0 = input('Enter intial value of independent variable: ');
        y0 = input('Enter intial value of dependent variable: ');
        h = input('Enter step size: ');
        xn = input('Enter point at which you want to evaluate solution: ') ;
        ode_sol = runge_kutta2(ode,x0,y0,h,xn);
        fprintf('\nThe solution at %f : %f\n',xn,ode_sol(end));
        n_sol = ode_sol;
    
    elseif (strcmp(method, 'rk4'))
        ode = input('Enter your function: '); %right hand side of ODE
        x0 = input('Enter intial value of independent variable: ');
        y0 = input('Enter intial value of dependent variable: ');
        h = input('Enter step size: ');
        xn = input('Enter point at which you want to evaluate solution: ') ;
        ode_sol = runge_kutta4(ode,x0,y0,h,xn);
        fprintf('\nThe solution at each iterations: \n');
        fprintf('%.6f\n',ode_sol);
        n_sol = ode_sol;
            
    else
        disp('Please choose a valid method');
        n_sol = 0;
    end
end