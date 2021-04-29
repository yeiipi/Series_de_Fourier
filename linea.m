function [zc, zd] = linea(z1, z2, pasos,ruido)
t = linspace(0, 1, pasos);

for i  = 1:length(t)
    zc(i) = z1*(1-t(i))+(t(i)*z2);
end
d = ruido*complex(randi([-1 1], length(zc), 1), randi([-1 1], length(zc), 1));
zd = zc+d';

end