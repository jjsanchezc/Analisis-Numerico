%busquedas incrementales: se ingresa el valor inicial de x (x0), el tamaño de paso(Delta) y el màximo nùmero de iteraciones (niter)



function [s] = busquedasIncr(x0,Delta,niter)%aca le podemos poner un parametro de string para poder ingresar la ecuacion



syms f(x)
%f(x)=exp(2-6*x)*cos(x^2-3*x)+4*x-3;
f(x)=cos(x)-x^2;
f0=f(x0);
error=2;
c=0;
c=c+1;
fprintf('Iter. \t x0 \t \t f(x0) \t \t Error \n');
fprintf('%2i \t %f \t %f \t %f \t %f \n',c,x0,f0,error,'\n');



if f==0
s=x0;
fprintf('%f es raiz de f(x)',x0)
else
x1=x0+Delta;
f1=f(x1);



while f0*f1>0 && c<niter
c=0;
c=c+1;
x0=x1;
f0=f1;
x1=x0+Delta;
f1=f(x1);
%fprintf('Iter. \t \t x0 \t \t Delta \t \t f(x0) \t \t \t \t Error \n');
fprintf('%2i \t %f \t %f \t %f \t %f \n',c,x0,f0,error,'\n');
end



if f1==0 %verifica que sea raiz
s=x1;
fprintf('%f es raiz de f(x)',x1)



elseif f0*f1<0 %verifica cambio de signo
s=x1;
fprintf('\n Existe una raiz de f(x) entre %f y %f \n',x0,x1)



else %verifica fracaso
s=x1;
fprintf('Fracasó en %f iteraciones',niter)
end
end
end