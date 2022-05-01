function result = taylor_series(f,x0,x1,k)
    syms x
    h=x1-x0;
    result= double(subs(f,x,x0));
    error = relative_error(result,double(subs(f,x,x1)));

    fprintf('\nzero order approximation: %f',result);

    col_names = {'n','f_x','Relative_Error'};
    tab_rows = [];
    tab_rows(end+1,:)= [0 result error];

    for n=1:k
        d=diff(f,n);
        D=double(subs(d,x,x0));
        F=factorial (n);
    
        result=result+D*(h^n)/F;
        error = relative_error(result,double(subs(f,x,x1)));
    
        tab_rows(end+1,:) = [n result error];
    end
    data_table(tab_rows,col_names);
end