function [a,b,c]=metodosminimosquadradospar(x,y) %PARABOLAS 
    plot(x,y,'rx','MarkerSize',8)
    xlabel('Intensidade do canto dos grilos')
    ylabel('Temperatura')
    format long
    n=length(x);
    A=[x.^2;x;ones(1,n)]; %POSSIVELMENTE TEM QUE SE MUDAR
    sol=inv(A*(A'))*A*y'; 
    a=sol(1) %
    b=sol(2) %
    c=sol(3) %Depende das posições da matriz A
    newy=a*x.^2+b*x+c; %Depende das posições da matriz A
    hold on;
    xx=min(x):0.01:max(x);
    yy=a*xx.^2+b*xx+c;
    plot(xx,yy); 
    hold off;
    legend('Dados', 'REGRESSÃO QUADRATICA ')
    erro=0;
    for i=1:n
        erro=erro+(y(i)-(a*x(i)^2+b*x(i)+c))^2;
    end
    erro=sqrt(erro)