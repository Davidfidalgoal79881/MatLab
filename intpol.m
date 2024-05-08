function sol=intpol(X, Y, xdado)
    nx=length(X); %tirar o tamanho do vetor X
    %fazer a aparecer com o X
    p=0;
    for n=1:nx
        l=1;
        for j=1:nx
            if n~=j
                l=l*(xdado-X(j))/(X(n)-X(j));
            end
        end
        p=p+Y(n)*l;
    end
    fprintf("\np(xdado)=%.5f\n", p);
end
        
