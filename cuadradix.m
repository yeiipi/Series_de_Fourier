function [zc, zd] = cuadradix(z1, z2, z3, z4, pasos,ruido)
[zc1, zd1] = linea(z1, z2, pasos, ruido);
[zc2, zd2] = linea(z2, z3, pasos, ruido);
[zc3, zd3] = linea(z3, z4, pasos, ruido);
[zc4, zd4] = linea(z4, z1, pasos, ruido);

zc = [zc1 zc2 zc3 zc4];
zd = [zd1 zd2 zd3 zd4];

end