%Punto fijo: se ingresa el valor inicial (x0), la tolerancia del error (Tol) y el màximo nùmero de iteraciones (niter)

function [n,xn,fm,E] = puntoFijo(x0,Tol,niter)

syms x

f=log((sin(x/100)+20))-x/(3/10);

g=(3/10)*log((sin(x/100)+20));

c=0;

fm(c+1) = eval(subs(f,x0));

fe=fm(c+1);

E(c+1)=Tol+1;

error=E(c+1);

xn=x0;

fi= eval(subs(f,x0));

gi= eval(subs(g,x0));

fprintf('Iter. \t \t x0 \t \t Tol \t \t f(x) \t \t g(x) \t \t Error\n');

fprintf('%2i \t %f \t %f \t %f \t %f \t %f \t %f \n', c,x0,Tol,fi,gi ,error, "\n")

while error>Tol && fe~=0 && c<niter

xn=eval(subs(g,x0));

fm(c+2)=eval(subs(f,xn));

fe=fm(c+2);

E(c+2)=abs(xn-x0);

error=E(c+2);

x0=xn;

c=c+1;

fi= eval(subs(f,x0));

gi= eval(subs(g,x0));

fprintf('Iter. \t \t x0 \t \t Tol \t \t f(x) \t \t g(x) \t \t Error\n');

fprintf ('%2i \t %f \t %f \t %f \t %f \t %f \t %f \n',c, x0,Tol,fi,gi, error,"\n");

while error>Tol && fe~=0 && c<niter

end

if fe==0

n=c;

fprintf('%f es raiz de f(x)',x0)

elseif error<Tol

n=c;

fprintf('%f es una aproximación de una raiz de f(x) con una tolerancia= %f',x0,Tol)

else

n=c;

fprintf('Fracasó en %f iteraciones',niter)

end

end