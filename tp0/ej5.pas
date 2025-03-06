program ej5;

const
    VAL_CAR = 1.6;

var
    cant_c,cli,res_k:integer;

begin
    writeln('Ingrese la cantidad de caramelos disponibles para la venta: ');
    readln(cant_c);
    writeln('Ingrese cantidad de clientes: ');
    readln(cli);
    res_k:= cant_c mod cli;
    writeln('La cantidad de caramelos que puede adquirir cada cliente es de: ',cant_c div cli,'.');
    writeln('La cantidad de caramelos con la que se queda el kiosquero es de: ',res_k'. ');
    writeln('El total recaudado por la venta de los caramelos es de: ',(camt_c - res_k)*VAL_CAR'. ');

end.
