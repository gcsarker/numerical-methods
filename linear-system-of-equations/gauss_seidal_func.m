function X = gauss_seidal_func(n,P,N)   
    syms x y z;
    eqns = sym('a',[1 n]);
    for i = 1:1:n
        fprintf('Equations %i: ',i);
        eqn = input('');
        eqns(i) = eqn;
    end
    [A,B] = equationsToMatrix(eqns);
    A = double(A);
    B = double(B);

    X = zeros(n,1);
    for i = 1:1:N
        for j = 1:1:n
            X(j) = B(j);
            for k = 1:1:n
                if k ~=j
                    X(j) = X(j) - A(j,k)*P(k);
                end
            end
            X(j) = X(j)/A(j,j);
            P(j) = X(j);
        end
    end
end