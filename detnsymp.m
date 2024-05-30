function detnsymp(x, M, erro) %só necessário determinar M, que é o maximo da norma da terceira derivada
    n=ceil((((x(2)-x(1))^5*M)/(180*erro))^(1/4));
    if(rem(n,2)~=0)
        n=n+1
    else
        n=n
    end
end