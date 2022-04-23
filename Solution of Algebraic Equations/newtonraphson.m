function n_sol = newtonraphson(eqn,ini_value,iter,tolerance)
    syms x;
    col_names = {'i','xi','f_xi','f_xi_diff','xi_next','Error'};
    tab_rows = [];
    
    eqn_diff = diff(eqn);
    n_sol = ini_value;
    
    for i= 0:1:iter
        prev = n_sol;
        func_value = double(subs(eqn,x,n_sol));
        func_value_diff = double(subs(eqn_diff,x,n_sol));
        n_sol = n_sol - (func_value/func_value_diff);
        err = relative_error(prev,n_sol);
        tab_rows(end+1,:) = [i prev func_value func_value_diff n_sol, err];
        
        if check_tolerance(prev,n_sol,tolerance)
            break;
        end
    end
    data_table(tab_rows,col_names);
end

    
        