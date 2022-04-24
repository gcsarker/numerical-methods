function lin_sol = matrix_inversion(n)
    syms x y z;
    eqns = sym('a',[1 n]);
    for i = 1:1:n
        fprintf('Equations %i: ',i);
        eqn = input('');
        eqns(i) = eqn;
    end
    
    [A,B] = equationsToMatrix(eqns);
    lin_sol = A\B;
end



