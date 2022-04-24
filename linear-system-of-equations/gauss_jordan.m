function lin_sol = gauss_jordan(n)
    syms x y z;
    eqns = sym('a',[1 n]);
    for i = 1:1:n
        fprintf('Equations %i: ',i);
        eqn = input('');
        eqns(i) = eqn;
    end
    
    [A,B] = equationsToMatrix(eqns);
    A_mat = [A B];
    
    for i = 1:1:n
        A_mat(i,:) = A_mat(i,:) ./ A_mat(i,i);
        for k = 1:1:n
            if k == i;
                continue
            end
            A_mat(k,:) = A_mat(k,:)-A_mat(i,:).*A_mat(k,i);
        end
    end
    lin_sol = A_mat(:,end);
end
