% Lagrange's Method

clc
clear all

x = [1950, 1960, 1970, 1980, 1990, 2000]; 
f = [151326, 179323, 203302, 226542, 249633, 281422];
X = 1995; n = length(x);  % no. of data-points n = no. of Lnfn

for i=1:n  % Array starts from index 1
    l(i) = 1.0;  % constructing array on the go %to take product
    for j=1:n
        if j~=i
            l(i) = l(i) * (X-x(j))/(x(i)-x(j));
        end
    end
end
% l = [l1, l2, l3,...,ln]
% Pn = l1f1 + l2f2 + l3f3 +...+ lnfn
sum = 0.0;
for i=1:n
    sum = sum + l(i)*f(i);
end
fprintf('The value at this point is %f', sum)
    
