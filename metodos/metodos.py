import math
class metodos:

    def newton():
        return 0

    def biseccion(xi,xs,tol,niter,fun):
        """
        Xi = float(input("Xi:"))
        Xs = float(input("Xs:"))
        Tol = float(input("Tol:"))
        Niter = float(input("Niter:"))
        print("Function:")
        Fun = input()
        """
        Xi=xi
        Xs=xs
        Tol=tol
        Niter=niter
        Fun=fun
        
        fm=[]
        E=[]
        x=Xi
        fi=eval(Fun)
        x=Xs
        fs=eval(Fun)

        if fi==0:
            s=Xi
            E=0
            print(Xi, "es raiz de f(x)")
        elif fs==0:
            s=Xs
            E=0
            print(Xs, "es raiz de f(x)")
        elif fs*fi<0:
            c=0
            Xm=(Xi+Xs)/2
            x=Xm                 
            fe=eval(Fun)
            fm.append(fm)
            E.append(100)
            while E[c]>Tol and fe!=0 and c<Niter:
                if fi*fe<0:
                    Xs=Xm
                    x=Xs                 
                    fs=eval(Fun)
                else:
                    Xi=Xm
                    x=Xi                 
                    fs=eval(Fun)
                    Xa=Xm
                    Xm=(Xi+Xs)/2
                    x=Xm 
                    fe=eval(Fun)
                    fm.append(fm)
                    Error=abs(Xm-Xa)
                    E.append(Error)
                    c=c+1
            if fe==0:
                s=x
                print(s,"es raiz de f(x)")
            elif Error<Tol:
                s=x
                print(s,"es una aproximacion de un raiz de f(x) con una tolerancia", Tol)
            else :                                     
                s=x
                print("Fracaso en ",Niter, " iteraciones ") 

    
    def puntoFijo():
        """
            -
            
        """
        return 0

    def reglaFalsa():
        """
            * significa multiplicando
            -calcular la interseccion con el eje x
            -hallar la pendiente de la recta
            -m=(f(b)-f(a))/b-a
            -hallamos la pendiente de la recta que queda desde el 
            intercepto hasta el extremo del intervalo en donde la 
            f cambia de signo
            -igualando las ecuaciones de ambas pendientes (porque 
            son triangulos semenjantes) resulta en 
            -     x= (b-f(b)*(f(b-a)))/f(b)-f(a)
            -se evalua f(a)*f(x) si es <0 quiere decir que la f
            sigue teniendo intercepto en el eje x entonces la "x"
            se convertiria en la nueva b y se repite el proceso
            de lo contrario
            - f(b)*f(x) si <0 la "x" se renombrará y será la nueva
            "a" y se repetirá el proceso
            -en algun momneto del proceso,la recta que trazaremos 
            entre las imágenes de los intervalos será igual a la 
            función a la que le estamos buscando la raíz, allí
            encontramos la "x"
            -cuando f(a)*f(x)=0, f(b)*f(x)=0 o x=0 quiere decir que 
            esa "x" es la raiz que buscamos
        """
        return 0
    
    def secante():
        return 0

    def raicesMultiples():
        return 0

    