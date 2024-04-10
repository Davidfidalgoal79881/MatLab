% Definindo o intervalo de x
x = 0:1:12;

% Calculando as funções
y1 = x.^2;
y2 = 2.^x;


% Plotando os gráficos
plot(x, y1, x, y2);

% Adicionando a legenda
legend('y1 = atan(x)', 'y2=2^x' );