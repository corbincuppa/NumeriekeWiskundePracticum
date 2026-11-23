function [x] = solve_inv(A, b)
%SOLVE_INV Lost het lineaire stelsel A*x = b op via de inverse van A.
%   X =  SOLVE_INV(A, b) berekent de oplossing x door de inverse van A te
%   bepalen met de ingebouwde functie inv en die te vermenigvuldigen met b.
%
arguments (Input)
    A
    b
end

arguments (Output)
    x
end

inverse_A = inv(A);
x = inverse_A * b;
end