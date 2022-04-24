function Y = runge_kutta2(ode,x0,y0,h,xn)
    syms x y z;
    n = ceil((xn-x0)/h);
    X = zeros(n,1);
    Y = zeros(n,1);
    
    col_names = {'xn','Yn','K1','K2'};
    tab_rows = [];
    X(1) = x0;
    Y(1) = y0;
    for i=1:n
        xk1 = subs(ode,x,X(i));
        yk1 = subs(xk1,y,Y(i));
        k1 = h*double(yk1);
    
        xk2 = subs(ode,x,X(i)+(h/2));
        yk2 = subs(xk2,y,Y(i)+(k1/2));
        k2 = h*double(yk2);
        
        tab_rows(end+1,:) = [X(i) Y(i) k1 k2];
        Y(i+1) = Y(i)+k2;
        X(i+1) = x0 + i*h;
    end
    tab_rows(end+1,:) = [X(n+1) Y(n+1) nan nan];
    data_table(tab_rows,col_names);
end