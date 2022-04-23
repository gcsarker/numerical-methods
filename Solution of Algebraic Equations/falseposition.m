function y = falseposition(a, b, iter, tolerance,eqn)
    syms x;
    col_names = {'n','a','b','f_a','f_b','Xsi','f_xsi','Error'};
    tab_rows = [];
    prev = 0;
    for i= 1:1:iter
        func_value_a = double(subs(eqn,x,a));
        func_value_b = double(subs(eqn,x,b));
        n_sol = ((a*func_value_b)-(b*func_value_a))/(func_value_b-func_value_a);
        func_value_sol = double(subs(eqn,x,n_sol));
        err = relative_error(prev,n_sol);
        if i==1
            tab_rows(end+1,:) = [i a b func_value_a func_value_b n_sol func_value_sol nan];
        else
            tab_rows(end+1,:) = [i a b func_value_a func_value_b n_sol func_value_sol err];
        end
        
        if func_value_a*func_value_sol < 0
            a = a;
            b = n_sol;
        else
            a = n_sol;
            b = b;
        end
        
        if check_tolerance(prev,n_sol,tolerance)
            break;
        end
        prev = n_sol;
    end
    data_table(tab_rows,col_names);
    y = n_sol;
end