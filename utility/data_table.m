function data_table(data,col_names)
    tab = array2table(data,'VariableNames',col_names);
    fprintf('\n\n');
    disp(tab);
end

