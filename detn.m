function detn(x, M, erro) %só necessário determinar M, que é o maximo da norma da terceira derivada
    n=ceil(sqrt((x(2)-x(1))^3*M/(12*erro)))
    

