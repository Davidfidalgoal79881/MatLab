function [a,b]=metodosminimosquadrados(x,y) %RETAS 
    plot(x,y,'rx','MarkerSize',8)
    xlabel('Intensidade do canto dos grilos')
    ylabel('Temperatura')
    format long
    n=length(x);
    A=[x;ones(1,n)];
    sol=inv(A*(A'))*A*y';
    a=sol(1)
    b=sol(2)
    newy=a*x+b;
    hold on;
    plot(x,newy)
    hold off;
    legend('Dados', 'Regressao Linear ')
    erro=0;
    for i=1:length(x)
        erro=erro+(y(i)-(a*x(i)+b))^2;
    end
    erro=sqrt(erro)