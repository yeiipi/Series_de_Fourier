function [zc, zd] = circulo(radio, real, imaginario, pasos, ruido)
ang = linspace(0, 2*pi, pasos);
x = radio * cos(ang) + real;
y = radio * sin(ang) + imaginario;
zc = complex(x,y);

d = ruido*complex(randi([-1 1], length(zc), 1), randi([-1 1], length(zc), 1));
zd = zc+d';

end

