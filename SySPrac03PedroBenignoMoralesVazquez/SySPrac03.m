%% Pr�ctica 3: Se�ales continuas
%
%
% Grupo: 2TV1
%
% Materia: Se�ales y Sistemas
%
% Alumnos:
% 
% _Aparicio Espinoza Octavio Joel_
%
% _Gonzalez Plata Jose Enrique_
%
% _Morales Rodriguez Diego Emilio_
%
% _Morales Vazquez Pedro Benigno_
%
% Profesor: Dr. Rafael Mart�nez Mart�nez
%
%

%%
%% Objetivos
% 
% * Manipulaci�n b�sica de MATLAB
% * Gr�ficas de se�ales reales y complejas continuas
% * Transformaci�n de se�ales continuas (escalamientos y traslaciones)
% * Calculo de energ�a y potencia de se�ales continuas
%
%% Introducci�n
% *Historia de matlab:*
%
% El primer MATLAB� no era un lenguaje de programaci�n; 
% Era una simple calculadora de matriz interactiva.
% No hab�a programas, ni cajas de herramientas, ni gr�ficos. Y no ODEs o FFTs.
% 
% La base matem�tica para la primera versi�n de MATLAB fue una serie de trabajos 
% de investigaci�n de JH Wilkinson y 18 de sus colegas, publicados entre 1965 y 1970
% y luego recopilados en Handbook for Automatic Computation, Volume II, Linear Algebra,
% editado por Wilkinson y C. Reinsch Estos documentos presentan algoritmos, implementados
% en Algol 60, para resolver problemas de ecuaciones lineales de matrices y valores propios.
%
% En 1983, Jack Little sugiri� la creaci�n de un producto comercial basado en MATLAB. 
% La PC IBM� se hab�a presentado solo dos a�os antes. Apenas era lo suficientemente 
% potente como para ejecutar un programa como MATLAB, pero Little anticip� su evoluci�n. 
% Dej� su trabajo, compr� un clon de PC Compaq � en Sears, se mud� a Stanford y junto a 
% Cleve Moler y Steve Bangert escribieron una versi�n nueva y extendida de MATLAB en C.
% 
% *Alternativas de c�digo abierto:*
% 
% * <https://www.gnu.org/software/octave/ GNU Octave>:
% Puede ser la alternativa m�s conocida a MATLAB. En desarrollo activo durante 
% casi tres d�cadas, Octave se ejecuta en Windows, Mac y Linux, y est� empaquetado para la 
% mayor�a de las distribuciones principales.
% * <https://www.scilab.org/ Scilab>: 
% Es otra opci�n de c�digo abierto para computaci�n num�rica que se ejecuta en todas
% las plataformas principales: Windows, Mac y Linux incluidos. Scilab es quiz�s la alternativa 
% m�s conocida fuera de Octave, y (como Octave) es muy similar a MATLAB en su implementaci�n,
% aunque la compatibilidad exacta no es un objetivo de los desarrolladores del proyecto.
% * <https://www.python.org/ Python>:
% Python es un lenguaje de programaci�n general (como Java, C, C++,�). En principio no tiene 
% nada que ver con matlab. Sin embargo, existe unas bibliotecas de c�lculo cient�fico para 
% Python que permite incluir casi la misma funcionalidad en un lenguaje de programaci�n general.
% * <https://julialang.org/ Julia>:: 
% Es un lenguaje de programaci�n homoic�nico, multiplataforma y multiparadigma de tipado 
% din�mico de alto nivel y alto desempe�o para la computaci�n gen�rica, t�cnica y cient�fica,  
% con una sintaxis similar a la de otros entornos de computaci�n similares
% * <http://www.sagemath.org/index.html SageMath>:
% Es otro sistema de software de matem�ticas de c�digo abierto que podr�a ser una
% buena opci�n para aquellos que buscan una alternativa de MATLAB. Est� construido sobre una 
% variedad de conocidas bibliotecas de computaci�n cient�fica basadas en Python, y su propio 
% lenguaje es sint�cticamente similar a Python. Tiene muchas caracter�sticas que incluyen una 
% interfaz de l�nea de comandos, cuadernos basados en navegador, herramientas para incrustar 
% f�rmulas en otros documentos y, por supuesto, muchas bibliotecas matem�ticas.
%% Desarrollo parte 1
%
% Crea una funci�n que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la funci�n debe regresar la evaluaci�n $F(\omega)=a/(a^2+\omega^2)$,
% esta funci�n debe trabajr con $a\in R$ y $t\in  R^n$. Debe
% mostrar su c�digo en el reporte (sin ejecutar).
%%
%   function w=fun1(t,a)
%   if(isreal(a))
%      w=a./(t.^2+a^2);
%   else
%       display("Solo numeros reales");
%   end
%   end
%
%
%% Desarrollo parte 2
%
% Construya una funci�n que gr�fique funciones de
% $f:R\rightarrow R$ en el formato de su elecci�n y pruebe
% su c�digo mostrando la gr�fica de $F(\omega)$ vs $\omega$ en el intervalo
% $[-2,2]$ para $a=1$, no debe
% incluir el c�digo, solo el uso de la funci�n para mostrar la gr�fica
%
graficar(-2:0.1:2,fun1(-2:0.1:2,1));
%%
% Donde el primer argumento es el vector que define el intervalo sobre el
% que se evaluara la funcion.
% 
% El segundo argumento, como se puede apreciar, es la funcion evaluada en ese
% vector. En este caso la funcion del ejercicio anterior, fun1, con a=1.
%% Desarrollo parte 4
% Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4
%  que se encuentra al final del cap�tulo 1 y antes de la secci�n de
%  problemas, cambie los _inline_ por funciones anonimas
%
% *SECCION M1.1: Funciones en linea(Inline)*
%
%%
f = @(t) exp(-t).*cos(2*pi*t); 
t = 0;
f(t)
f(0)
t = (-2:2);
f(t) 
plot(t,f(t)); 
xlabel('t'); 
ylabel('f(t)')
grid;
%%
t = (-2:0.01:2);
plot (t,f(t)); 
xlabel('t'); 
ylabel('f(t)'); 
grid;
%%
% *SECCION M1.2: Operadres relacionales y la funci�n escalon unitario*
%
%%
u = @(t) t>=0;
t=(-2:2);
plot (t,u(t));
xlabel('t');
ylabel('u(t)');
%%
t = (-2:0.01:2); 
plot (t,u(t)); 
xlabel('t'); 
ylabel('u(t)'); 
axis ([-2 2 -0.1 1.1]);
%%
p = @(t) (t>=0) & (t<1);
t = (-1:0.01:2); plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)'); 
axis ([-1 2 -.1 1.1]);

%%
%
% *SECCION M1.3: Visualizando operaciones en una variable independiente*
%
%%
g = @(t) exp(-t).*cos(2*pi*t).*(t>=0);
t = (-2:0.01:2); 
plot(t,g(2*t+1)); 
xlabel('t'); 
ylabel('g(2t+1)'); 
grid;
%%
plot(t,g(-t+1)); 
xlabel('t'); 
ylabel('g(-t+1)');
grid;
%%
plot(t,g(2*t+1) +g(-t+1)); 
xlabel('t'); 
ylabel('h(t)'); 
grid;
%%
%
% *SECCION M1.4: Integraci�n numerca y estimaci�n de la energ�a de la se�al*
%
%%
x = @(t) exp(-t).*((t>=0)&(t<1));
t = (0:0.01:1);
E_x =sum(x(t).*x(t)*0.01) 
x_squared = @(t) exp(-2*t).*((t>=0)&(t<1));
E_x = quad(x_squared,0,1)
g_squared = @(t) exp(-2*t).*(cos(2*pi*t).^2).*(t>=0);
t = (0:0.001:100); 
E_g = sum(g_squared(t)*0.001)
E_g = quad(g_squared, 0,100)
%% Desarrollo parte 5
% Resuelve el problema 1.2.2 usando las herramientas del paso anterior.
%
% *Problema 1.2.2*
% 
% Para la se�al $x(t)=-t[u(t+4)-u(t)] + t[u(t)-u(t-2)]$ realice las
% graficas 
% 
% a) $x(t-4)$
% 
% b) $x(t/1.5)$
% 
% c) $x(-t)$
% 
% d) $x(2t-4)$
% 
% e) $x(2-t)$
%
%%
x=@(t) ((-t).*((t<0)&(t>-4))) +((t).*((t>0)&(t<2)));
    t=[-10:0.0001:10];
    plot(t,x(t));
    xlabel('t');
    ylabel('x(t)');
%%
%
% *a)*
%
%%
t=[-10:0.0001:10];
    plot(t,x(t-4));
    xlabel('t');
    ylabel('x(t-4)');
    
%%
% *b)*
%
%%
t=[-10:0.0001:10];
    plot(t,x(t/1.5));
    xlabel('t');
    ylabel('x(t/1.5)');
%%
% *c)*
%
%%
t=[-10:0.0001:10];
    plot(t,x(-t));
    xlabel('t');
    ylabel('x(-t)');
%%
% *d)*
%
%%
t=[-10:0.0001:10];
    plot(t,x(2.*t-4));
    xlabel('t');
    ylabel('x(2t-4)');
%%
% *e)*
%
%%

t=[-10:0.0001:10];
    plot(t,x(2-t));
    xlabel('t');
    ylabel('x(2-t)');
%% Desarrollo parte 6
% 
% Escriba una funci�n que se llame energia que reciba como argumento una
% funci�n (anonima o simbolica) y que regrese el calculo de la energ�a,
% para esto puede resultar �til investigar las instrucciones int , integral
% Se presupone utilizar el c�digo solo con funciones de energia. Muestre el
% c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.3
% 
% *Funci�n de energ�a*
%
% Tenemos la siguiente funci�n:
%
%   function E = energia(f,a,b)
%
%       E=integral(abs(f).^2,a,b);
%
%   end
%  
% Los parametros de los que depende la energ�a en nuestra funci�n son:
% la funci�n, el limite inferior y el limite superior para integrar.
%
%
%
%% Desarrollo parte 7
% 
% Escriba una funci�n que se llame potencia que reciba como argumento una
% funci�n (anonima o simbolica) y que regrese el calculo de la potencia
% para esto puede resultar �til investigar las instrucciones int , integral
% Se presupone utilizar el c�digo solo con funciones de potencia. Muestre
% el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.4
%% 
%   function  P = potencia(f,T)
% 
%       P=(1/T) * integral(f,-T/2, T/2);
% 
%   end
%
%
%%
% *Problema 1.1.4*
% Encuentre la potencia de la se�al peri�dica $x(t)=t^{3}$.
% Encuentra tambi�n las potencias y los valores rms de:
% 
% a) $-x(t)$
%
% b) $2x(t)$ 
%
% c) $cx(t)$
% 
% *Figura $x(t)$*
x=@(t) t.^3;
t=-100:0.1:100;
plot(t,x(t))
title('Gr�fica de la se�al f(t)=t^3 ')
%%
% a) $-x(t)$
f=(@(t) ((abs(-(t.^3))).^2));
p = potencia(x,4)
% RMS
rms = sqrt(p)
%%
% b) $2x(t)$ 
f=(@(t) ((abs(2.*(t.^3))).^2));
potencia(f,4) 
% RMS
rms=sqrt(ans)

%%
% c) $cx(t)$
f=@(t) ((abs((t.^3))).^2);
potencia(f,4) 
% RMS
rms=sqrt(ans)
