function Y = euler_func(ode,x0,y0,h,n,ode_exact)
    syms x y z;
    Y = zeros(1,n+1);
    Y(1) = y0;
    Y_Exact = zeros(1,n+1);
    Y_Exact(1) = y0;
    tab_rows = [];
    if ~isempty(ode_exact)
        col_names = {'n','x','y','Exact_value','Error'};
        tab_rows(end+1,:) = [0 x0 y0 Y_Exact(1) relative_error(y0,Y_Exact(1))];
    else
        col_names = {'n','x','y'};
        tab_rows(end+1,:) = [0 x0 y0];
    end
    
    for i=2:1:n+1
        xf = subs(ode,x,x0);
        yf = double(subs(xf,y,y0));
        Y(i) = Y(i-1)+h*yf;
        x0 = x0+h;
        y0 = Y(i);
        
        if ~isempty(ode_exact)
            Y_Exact(i) = double(subs(ode_exact,x,x0));
            tab_rows(end+1,:) = [i-1 x0 y0 Y_Exact(i) relative_error(y0,Y_Exact(i))];
        else
            tab_rows(end+1,:) = [i-1 x0 y0];
        end
    end
    data_table(tab_rows,col_names);
end        