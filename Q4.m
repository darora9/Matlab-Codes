% LU

clc
clear all

A = [2,-1,1;3,3,9;3,3,5];
m = size(A,1); n = size(A,2);
L = eye(m); % eye(m) -> IDENTITY MATRIX of Order m x m
U = A;      % eye(m,n) -> IDENTITY MATRIX of Order m x n

for j=1:n-1
    for i=j+1:m
        L(i,j) = U(i,j)/U(j,j); % m1, m2, ...
        U(i,:) = U(i,:) - L(i,j)*U(j,:);  % Ri = Ri - miRj *** j->stage
    end
end
L
U