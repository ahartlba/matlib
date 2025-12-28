function T = tridiag(n, l, m, u)
    % n: size of the matrix
    % l: subdiagonal value
    % m: main diagonal value
    % u: superdiagonal value
    
    % Initialize an n x n zero matrix
    T = zeros(n, n);
    
    % Fill the main diagonal with b
    for i = 1:n
        T(i, i) = m;
    end
    
    % Fill the subdiagonal with a
    for i = 2:n
        T(i, i-1) = l;
    end
    
    % Fill the superdiagonal with c
    for i = 1:n-1
        T(i, i+1) = u;
    end
end
