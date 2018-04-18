function jarak = hitungJarak(a1,a2,b1,b2,c1,c2,d1,d2)
    a = (a1-a2)^2;
    b = (b1-b2)^2;
    c = (c1-c2)^2;
    d = (d1-d2)^2;
    hasil = a + b + c + d;
    jarak = sqrt(hasil);
end