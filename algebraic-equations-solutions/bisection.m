function y = bisection(min, max, iter,tolerance,eqn)
    syms x
    col_names = {'n','a','b','Xsi','f_xsi'};
    tab_rows = [];
    prev = 0;
    for i= 1:1:iter
        n_sol = (min+max)/2;
        func_value_min = double(subs(eqn,x,min));
        func_value_sol = double(subs(eqn,x,n_sol));
        tab_rows(end+1,:) = [i min max n_sol func_value_sol];
        if func_value_min*func_value_sol < 0
            min = min;
            max = n_sol;
        else
            min = n_sol;
            max = max;
        end
        
        if check_tolerance(prev,n_sol,tolerance)
            break;
        end
        prev = n_sol;
    end
    data_table(tab_rows,col_names);
    y = n_sol;
end