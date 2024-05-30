%forma simples
%I=integral definido de A a B de f(x) ~= h/3(f(a)+4*f(c)+f(b))
%Erro=-f(e)''''*h^5/90
%Se f'''' for positivo Itraço>I
%Se f'''' for negativo Itraço<I
%Se f'''' for nulo Itraço=I
function sympson(a,b , n) % x é o vetor, x(1)->a x(2)->b   n tem que ser par
    format long;
    if(rem(n,2)~=0)
        fprintf("ERRO: N NÃO É PAR\n")
    else   
    h=(b-a)/n;
    x=a:h:b;
    %y=4*x.^2-2*x+2; %funcao a mudar
    y=[1,2,0]; %ou então, quando não nos dão a função

    sum=y(1)+y(n+1);
    m=(n+1)/2;
    sum1=0;
    for j=1:m
        sum1=sum1+y(2*j);
    end
    sum2=0;
    for j=1:m-1
        sum2=sum2+y(2*j+1);
    end
    sum=sum+4*sum1+2*sum2;
    int=h/3*sum
    end
end
