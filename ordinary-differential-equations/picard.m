function sol = picard(ode,x0,y0,xn,n)    
    syms x y z;
    ode = matlabFunction(ode);
    Y = sym('a',[1,n]);
    Y(1) = y0;
    sol = zeros(1,n+1);
    sol(1) = y0;
    col_names = {'n','Yn'};
    tab_rows = [];
    tab_rows(end+1,:) = [0, sol(1)];
    for i=1:1:n
        Y(i+1) = y0+int(ode(x,Y(i)),x,[x0 x]);
        sol(i+1) = double(subs(Y(i+1),x,xn));
        tab_rows(end+1,:) = [i sol(i+1)];
    end 
    data_table(tab_rows,col_names);
end