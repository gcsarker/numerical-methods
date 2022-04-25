function Y = runge_kutta4(ode,x0,y0,h,xn)
    syms x y z;
    n = ceil((xn-x0)/h);
    X = zeros(n,1);
    Y = zeros(n,1);

    col_names = {'xn','Yn'};
    tab_rows = [];
    X(1) = x0;
    Y(1) = y0;
    for i=1:n
        xf = subs(ode,x,X(i));
        yf = subs(xf,y,Y(i));
        k1 = double(yf);
    
        xf = subs(ode,x,X(i)+(h/2));
        yf = subs(xf,y,Y(i)+((k1*h)/2));
        k2 = double(yf);
        
        xf = subs(ode,x,X(i)+(h/2));
        yf = subs(xf,y,Y(i)+((k2*h)/2));
        k3 = double(yf);
        
        xf = subs(ode,x,X(i)+h);
        yf = subs(xf,y,Y(i)+k3*h);
        k4 = double(yf);
        
        tab_rows(end+1,:) = [X(i) Y(i)];
        Y(i+1) = Y(i)+(k1+2*k2+2*k3+k4)*(h/6);
        X(i+1) = x0 + i*h;
    end
    tab_rows(end+1,:) = [X(n+1) Y(n+1)];
    data_table(tab_rows,col_names);
end
