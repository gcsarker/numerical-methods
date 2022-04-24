function I = trapezoidal_rule(func,a,b,n)    
    syms x y z;
    h = (b-a)/n;
    X = zeros(1,n+1);
    Y = zeros(1,n+1);
    col_names = {'n','X','Y_n'};
    tab_rows = [];
    for i = 0:1:n
        X(i+1) = a + h*i;
        Y(i+1) = subs(func,x,X(i+1));
        tab_rows(end+1,:) = [i X(i+1) Y(i+1)];
    end
    
   Y1 = Y(1)+Y(end);
   Y2 = 0;
   for i = 2:1:n
       Y2 = Y2+Y(i);
   end
   I = (h/2)*(Y1+2*Y2);
   data_table(tab_rows,col_names);
end 
    
    
    
    
