function lin_sol= gauss_elimination(n) 
    syms x y z;
    eqns = sym('a',[1 n]);
    for i = 1:1:n
        fprintf('Equations %i: ',i);
        eqn = input('');
        eqns(i) = eqn;
    end
    
    [A,B] = equationsToMatrix(eqns);
    for t = 1:1:n-1
        for i = t:1:n
            if i+1>n
                break;
            end
            eqns(i+1) = eqns(i+1)*(A(t,t)/A(i+1,t));
            eqns(i+1) = eqns(t)-eqns(i+1);
        end
        [A,B] = equationsToMatrix(eqns);
    end
    
    lin_sol = sym('a',[1 n]);
    for i = n:-1:1
        lin_sol(i) = solve(eqns(i));
        var = symvar(eqns(i));
        for k = n-1:-1:1
            eqns(k) = subs(eqns(k),var(end),lin_sol(i));
        end
    end
end
    
    
    
        