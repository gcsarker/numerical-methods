function y = secant(x0, x1,  iter,tolerance,eqn)
    syms x;
    col_names = {'n','x0','f_x0','x1','f_x1','x2','f_x2'};
    tab_rows = [];
    prev = 0;
    
    for i= 1:1:iter
        func_value_x0 = double(subs(eqn,x,x0));
        func_value_x1 = double(subs(eqn,x,x1));
        x2 = ((x0*func_value_x1)-(x1*func_value_x0))/(func_value_x1-func_value_x0);
        func_value_x2 = double(subs(eqn,x,x2));
        tab_rows(end+1,:) = [i x0 func_value_x0 x1 func_value_x1 x2 func_value_x2];
        x0 = x1;
        x1 = x2;
        
        if check_tolerance(prev,x2,tolerance)
            break;
        end
        prev = x2;
    end
    data_table(tab_rows,col_names);
    y = x2;
end