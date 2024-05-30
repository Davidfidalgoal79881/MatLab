function traprule(a,b, n) % x é o vetor, x(1)->a x(2)->b
    format long
    %n= ceil(sqrt((x(2)-x(1))^3*M/(12*erro)))
    h=(b-a)/n;
    x=a:h:b;

    %y=exp(-x);       %MUDAR FUNCAO
    y=[1,2,0]; %ou então, quando não nos dão a função
    sum=y(1)+y(n+1);
    for j=2:n
        sum=sum+2*y(j);
    end
    int=h*sum/2
end

%FORMA SIMPLES
%I=integral definido de A a B de f(x) ~= B-A/2*(f(a)+f(b)
%M=|MAX(f(x))|

%Erro=-f(e)''*(b-a)^3/12
%Se f'' for positivo Itraço<I
%Se f'' for negativo Itraço>I
%Se f'' for nulo Itraço=I