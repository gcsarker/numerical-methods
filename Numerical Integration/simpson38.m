function I = simpson38(func,a,b,n)    
    syms x y z;    
    if rem(n,3)
        error('The Subintervals must be a multiple of 3.');
    end
    
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
       if i-1 == fix((n+1)/2)
           continue;
       end
       Y2 = Y2+Y(i);
    end
    Y3 = Y(fix((n+1)/2)+1);
    I = ((3*h)/8)*(Y1+3*Y2+2*Y3);
    data_table(tab_rows,col_names);
end 
