function [] = global_modify_ab(b)
global A;
fprintf('inside global_modify_ab A= %f, b= %f %f\n',A,b);
A= A+b;
b=A+b;
fprintf('inside global_modify_ab A= %f, b= %f %f\n',A,b);
end