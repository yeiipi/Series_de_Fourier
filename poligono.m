function [zc, zd] = poligono(zi, pasos, ruido)

zc = [];
zd = [];

for i = 1:length(zi)
    if i == length(zi)
        [lc,ld] = linea(zi(i), zi(1), pasos, ruido);
        zc = [zc lc];
        zd = [zd ld];
    else
        [lc,ld] = linea(zi(i), zi(i+1), pasos, ruido);
        zc = [zc lc];
        zd = [zd ld];
    end
end

end