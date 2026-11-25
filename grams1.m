function [Q, R] = grams1(A)
%GRAMS1 Gramm-Schmidt algorithm version 1
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
end  

for i = 1:n 
    R(i, i) = norm(v(:,i), 2);
    Q(:,i) = v(:,i)/R(i, i);
    for j = i+1:n
        R(i, j) = Q(:,i)' * v(:,j); 
        v(:,j) = v(:,j) - R(i, j) * Q(:,i); 
    end
end


end