global A;
A = 2; b = [1,4];c=4;
fprintf('before calling global_modify_ab A= %f, b= %f %f \n',A,b);
global_modify_ab(b);
fprintf('after calling global_modify_ab A= %f %f, b= %f %f\n',A,b);