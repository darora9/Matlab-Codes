% Newton Interpolation:

clc
clear all

x=[0,0.25,0.5,0.75];
f=[1,1.64872,2.71828,4.4816];
n=length(x);

%Construct Matrix : 0th Divided-Difference, 1st DD, 2nd DD, ...
DD=zeros(n);
DD(:,1)=f;
for j=2:n
    for i=j:n
        DD(i,j) = (DD(i,j-1)-DD(i-1,j-1))/(x(i)-x(i-j+1));
    end
end

% ind:   1     2          3
% pro = [1, (x-x1), (x-x1)(x-x2), ...]
p=0.43; %x
pro(1) = 1.0;
for i=2:n
    pro(i) = 1.0; % constructing array on the go %to take product
    for j=1:i-1
        pro(i) = pro(i) * (p-x(j));
    end
end

% (x-x0)*DD1
sum=0;
for i=1:n
    sum = sum + pro(i)*DD(i,i);
end
DD
disp(sum)
 
    