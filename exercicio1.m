%METODO PONTO FIXO
function exercicio1(x0,k,erro) %xo->aproximação inicial   %k->numero iterações
format long
j=0;
erroa=1;
fprintf('ITERAÇÃO %d e o valor aproximado é:%.10f e o erro é %.10f\n', j, x0, erroa);
j=1;
while (j<=k && erroa > erro)
    xn=1/2*(cos(x0/2));  %mudar funcao aqui!!!
    erroa=abs(xn-x0); 
    x0=xn;
    fprintf('ITERAÇÃO %d e o valor aproximado é:%.10f e o erro é %.10f\n', j, x0, erroa);
    j=j+1;
end

end
%x=g(x)
%CONDIÇÕES PARA CONVERGENCIA
%F CONTINUA NO INTERVALO
%|g(x)'|<1f