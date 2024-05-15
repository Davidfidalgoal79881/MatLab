%meter tudo a log
function metsminsqnaolinear(x,y) 
    plot(x,y,'rx','MarkerSize',8)
    xlabel('Intensidade do canto dos grilos')
    ylabel('Temperatura')
    format long
    n=length(x);
    for j=1:n
        xaux(j)=x(j);
        yaux(j)=y(j)^2; %mudar aqui a termos uma regressão linear
    end
    A=[xaux;ones(1,n)];
    sol=inv(A*(A'))*A*yaux';
    a=sol(1);
    a=sqrt(a) %
    b=sol(2); 
    b=-b/(a^2) %mudar consoante nos deu quando calculamos o novo y=Ax+B (pode ser o contrario)
    newy=a*sqrt(x-b); %mudar para a funcao original
    hold on;
    plot(x,newy)
    hold off;
    legend('Dados', 'Regressao Linear ')
    erro=0;
    for i=1:length(x)
        erro=erro+(y(i)-(a*sqrt(x(i)-b)))^2; %MUDAR PARA A FUNCAO ORIGINAL
    end
    erro=sqrt(erro)