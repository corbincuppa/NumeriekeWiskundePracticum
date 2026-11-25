% if grams1 is correct then
I = [1 0 0 ;
    0 1 0;
    0 0 1];
A = [1 1 0; 
    1 0 1; 
    0 1 1];
epsilon = 1e-10;

[Q, R] = grams1(A);
    % Q*R = A
    % This is orthonormal matrix so norm of (A-Q*R) should be zero
    if(norm(Q*R - A) < epsilon)
        disp("grams1 has Q*R == A");
    end
        
    % Q is unitary, Q^-1 = Q'
    if(norm(Q'*Q - I) < epsilon)
        disp("grams1 has uniatry Q");
    end


% if grams2 is correct then
[Q, R] = grams2(A);
    % Q*R = A
    % This is orthonormal matrix so norm of (A-Q*R) should be zero
    if( Q*R == A)
        disp("grams2 has Q*R == A");
    end

    % Q is unitary, Q^-1 = Q'
    if(norm(Q'*Q - I) < epsilon)
        disp("grams2 has uniatry Q");
    end
