function [r1,r2] = quadratic_ex(a,b,c)
D=discrim(a,b,c);
r1=-b+sqrt(D)/2/a;
r2=-b-sqrt(D)/2/a;
end
function D= discrim(a,b,c)
D=b^2-4*a*c;
end