function [Q, R] = grams2(A)
%GRAMS2 Gramm-Schmidt algorithm version 2
%   Detailed explanation goes here
arguments (Input)
    A
end

arguments (Output)
    Q
    R
end

[m, n] = size(A);
Q = zeros(m, n);
R = zeros(n, n);


for j = 1:n
    v(:,j) = A(:,j);

    for i = 1:j-1 
        R(i, j) = Q(:,i)' * A(:,j); 
        v(:,j) = v(:,j) - R(i, j) * Q(:,i); 
    end
    R(j, j) = norm(v(:,j), 2);
    Q(:,j) = v(:,j)/R(j, j);
    
end  

end