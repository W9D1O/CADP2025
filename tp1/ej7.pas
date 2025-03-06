program ej7;


var
    cod:integer;
    p_act,p_nue,porc_aum:real;


begin
    repeat
        writeln('Ingrese codigo del producto: ');
        readln(cod);
        writeln('Ingrese el valor actual del producto: ');
        readln(p_act);
        writeln('Ingrese el nuevo valor del producto: ');
        readln(p_nue);
        porc_aum:= p_nue * 100 / p_act - 100;
        if porc_aum > 10 then
            writeln('El aumento de precio del producto ',cod,' supera el 10%')
        else
            writeln('El aumento de precio del producto ',cod,' no supera el 10%');
    until cod = 32767;
end.
