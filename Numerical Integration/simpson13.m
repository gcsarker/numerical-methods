function I = simpson13(func,a,b,n)    
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
   O = 0;
   E = 0;
   for i = 2:1:n
       if rem(i-1,2)
           O = O+Y(i);
       else
           E = E+Y(i);
       end
   end
   I = (h/3)*(Y1+4*O+2*E);
   data_table(tab_rows,col_names);
end 
