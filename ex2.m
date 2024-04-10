%METODO NEWTON
function sol=NewtonSistemas(x0,tol)
% xo -> aproximacao inicial
% verificar se qualquer x pertencente a um intervalo se f(x)f''(x)>0
% tol: |x_{n+1}-x_n| < tol
format long
erro=1;
i=1;
    function y=f(x) %funcao f
        y=exp(6*x)+1.441*exp(4*x)-0.3330;
    end
%calcular derivada nos comandos
%syms x
%f=inline('*funcao*', 'x')
%diff(f(x),x)
    function dy=df(x) %funcao derivada de f
        dy=(1441*exp(4*x))/250 + 6*exp(6*x);
    end
while erro>=tol
    xn=x0-(f(x0))/(df(x0)); %Chama a função f e a função df
    erro=abs(xn-x0);
    x0=xn;
    fprintf('iteração %d ->Valor aproximado é:%.10f e o erro é %.20f\n', i, x0, erro);
    i=i+1;
end
end
