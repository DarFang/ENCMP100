%advanced mathematics


%statistical functions;
%mean,min,max,sum,prod, cumsum,cumprod,istogram,var,std

x=randn(100);
y=x(:);
h=histogram(y);
m=mean(y);
s=std(y);
v=var(y);%std^2

%f(x)=4x^3-2x^2-8x+3
roots([4 -2 -8 3])
p=[-2 1 4];%2*x^2+x+4
polyval(p,0:3);
x=2:6;
y=[65 67 72 71 63];
polyfit(x,y,1)
coefs = polyfit(x,y,2);
curve = polyval(coefs, x);
plot(x,y,'ro',x,curve)
xlabel('Time')
ylabel('Tempurature');
h=gca;
set(h,'FontSize',18);

polyval(coefs,7);
polyval(coefs,2.5);

A=[4 -2 1; 1 1 5; -2 3 -1];
b=[7 10 2]';

x=inv(A)*b;
x=A\b;

a=sym('a');

a+a;
b=str2sym('x^2');
c=str2sym('x^4');
c/b;

x=sym('x');y=sym('y'); z=sym('z');
syms x y z

%built in function sym2poly and ply2sim convert symbolic expressions
%to plyomial vectoers and vice versa

mp=[3 2 -4 3]
poly2sym(mp);

%simplify expression
myexpr= cos(x)^2+sin(x)^2;
simplify(myexpr)

%factoring
collect(x^2+4*x^3+3*x^2)
expand((x+2)*(x-1))
factor(ans)

%substitute
myexp=x^3 +3*x^2-2
subs(myexp,3)

%fraction
sym(1/2+1/3)

%solving equations
%if you want to solve: 2*x^2+x=6
syms x
solve(2*x^2+x==6)

%integration


%anonymous functions:
%we can write in-line functions as follows
f=@(x) 3*x.^2-1;
x=2:0.001:4;
y=f(x);%evaluate f@x
trapz(x,y)

%There is another built-in function called quad
quad(f,2,4)
integral(f,2,4)

%polynomails,polyint will perform integration
origp=[3 4 -4];
intp=polyint(origp)

%we can perform differentialtion
diffp=polyder(origp)

polyval(diffp,1:3)

f=@(x) x.^3+x.^2-4*x+3;
x=0.5:3.5
y=f(x);
deriv=diff(y)./diff(x)

%calculus in the symbolic math toolbox
%we can use diff and int to differential and 
%intgrate using the sumbolic math toolbox

syms x;
%if we want to integrate f(x) 3x^2-1
int(3*x.^2-1)


int(3*x.^2-1,2,4)

syms x h 
f = @(x) x.^3+2*x.^2-4*x+3
limit((f(x+h)-f(x)/h,h,0)
syms x f
f=x^3+2*x^2-4*x+3;
diff(f)
