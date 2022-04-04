%Bisección: se ingresa el valor inicial y final del intervalo (xi, xs), la tolerancia del error (Tol) y el màximo nùmero de iteraciones (niter) 

%{
paso1:
-introducimos el valor de 
x inferior
x superior
tolerancia
numero maximo de iteraciones
-Notas: REVISAR COMO PODEMOS IR PASANDO EL CODIGO
A DJANGO, COMO POR EJEMPLO, COMO HACEMOS LO DE LOS
INPUTS
%}
function [s,E,fm] = biseccion(xi,xs,Tol,niter)
    fprintf('Metodo Biseccion \n \n');
    syms x %crea la variable x
        f(x)=exp(2-6*x)*cos(x^2-3*x)+4*x-3;
        fi=eval(subs(f,xi));
        fs=eval(subs(f,xs));
        
        c=0;

    fprintf('Iter. \t xi \t \t xs \t \t tOl \t \t f(xs) \t \t f(xi) \t \t \t Error \n');
    fprintf('%2i \t %f \t %f \t %f \t %f \t %f \t \t %f  \n ',c,xi,xs,Tol,fs,fi,"\n");

    %{
    otros ejemplos de ecuaciones
    f=9.8*x*(1-exp(-15*9/x))/15-35
    f=(x-2.2534)*(x-3.8899)*(x+3.1415)
    %}
    
    %{
    Paso 2:
    -Inicia el ciclo
    -revisar si la funcion evaluada en xi y xs es igual a 0
        %}
        if fi==0 
            s=xi;
            E=0;
            fprintf('%f es raiz de f(x)',xi);
        elseif fs==0
            s=xs;
            E=0;
            fprintf('%f es raiz de f(x)',xs);
    
        elseif fs*fi<0
            c=0; %contador =1 o =0  
            xm=(xi+xs)/2; %la m tiene algun significado? xi= x inferior
            fm(c+1)=eval(subs(f,xm));
            fe=fm(c+1);
            E(c+1)=Tol+1;
            error=E(c+1);

            while error>Tol && fe~=0 && c<niter
                if fi*fe<0
                    xs=xm;
                    fs=eval(subs(f,xs));
                else
                    xi=xm;
                    fi=eval(subs(f,xi));
                    
                end
                    
                xa=xm;  % x auxiliar
                xm=(xi+xs)/2;
                fm(c+2)=eval(subs(f,xm));
                fe=fm(c+2);
                E(c+2)=abs((xm-xa));%por qué poner esto y no solamente que el error=abs((xm-xa)) ??
                error=E(c+2);
                c=c+1;
                %fprintf('%2i \t %f \t %f \t \t %f \t %f \n', c,xi,xs,Tol);
                fprintf("\n")
                fprintf('%2i \t %f \t %f \t %f \t %f \t %f \t \t %f \t \t %f \n ',c,xi,xs,Tol,fs,fi,error,"\n");
            end
            if fe==0
               s=xm;
               fprintf('%f es raiz de f(x)\n',xm) 
            elseif error<Tol
               s=xm;
               fprintf('%f es una aproximación de una raiz de f(x) con una tolerancia= %f \n',xm,Tol)
            else 
               s=xm;
               fprintf('Fracasó en %f iteraciones \n',niter) 
            end
        else
           fprintf('El intervalo es inadecuado \n')         
        end    
        
    end