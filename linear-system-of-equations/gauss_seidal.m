    syms x y z;
    n= 3;
    eqns = sym('a',[1 n]);
    for i = 1:1:n
        fprintf('Equations %i: ',i);
        eqn = input('');
        eqns(i) = eqn;
    end
    [A,B] = equationsToMatrix(eqns);
    P = input('Enter intial Guess Vector: ');

    N = input('Enter no of iterations: ');
    e = input('Enter your tollerance: ');
    
    eqns2 = sym('a',[1 n]);
    for i=1:1:n
        var = symvar(eqns(i));
        eqns2(i) = var(i)==solve(eqns(i),var(i));
    end
    X = zeros(n,1);
    Y = zeros(n,1);
    for i = 1:1:N
        for j = 1:1:n
            var = symvar(eqns(j));
            temp = eqns2(j);
            for k = 1:1:length(var)
                if k ~=j
                    temp = subs(temp,var(k),P(k));
                end
            end
            X(j) = double(solve(temp));
            P(j) = X(j);
        end
    end