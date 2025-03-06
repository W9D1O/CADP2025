program ej6;

var
    dolares,dolar_a_pe,com_ban:real;

begin
    writeln('Ingrese monto en dolares: ');
    readln(dolares);
    writeln('Ingrese valor del dolar: ');
    readln(dolar_a_pe);
    writeln('Ingrese porcentaje de la comision del banco: ');
    read(com_ban);
    writeln('El total a abonar es de: ',dolares*dolar_a_pe + (dolares*dolar_a_pe*com_ban/100):8:2);
end.
