program ej1;

const
    INV_EXT = 50000;

var
    i,cod,cant_inv,cod_max,cant_emp:longint;
    monto,prom ,monto_max:real;
    vf:boolean;

begin
    vf:= false;
    monto_max:= -1;
    prom:= 0;
    cant_emp:= 0;
    repeat
       writeln('Ingrese codigo de la empresa: ');
       readln(cod),
       writeln('Ingrese cantidad de inversiones: ');
       readln(cant_inv);
       for i:= 0 to cant_inv - 1 do begin // Itero sobre la cantidad de inversiones y voy agregando cada inversion en forma individual.
           writeln('Ingresed el monto de la inversion a procesar: ');
           readln(monto);
           if monto > INV_EXT then // Confirmo si para la empresa que esta siendo procesada hay una inversion que supere INV_EXT(Inversion extraordinaria), 
            vf:= true;
           prom:= prom + monto; // acumulo los montos de las inversiones de la empresa
       end;
       if vf then // Sumo la empresa con alguna inversion que supere INV_EXT
        cant_emp:= cant_emp + 1;
        vf:= false; //Reseteamos vf para poder agregar,en caso de que lo haya, otra empresa con alguna inversion mayor a INV_EXT
       if prom > monto_max then begin // Buscamos el mayor monto inversito con su correspondiente condigo de empresa.
        monto_max:= prom;
        cod_max:= cod;
       end;
       writeln('El valor promerio de las inversiones de la empresa ',cod,' es de: ',prom/cant_inv:2:2); // Se imprime el promedio de inversiones, de la empresa que fue perocesada.
       prom:= 0;
    until cod = 100;
    writeln('La empresa con mayor monto invertido fue: ',cod_max,'. Con un total ce: ',monto_max);
    writeln('La cantidad de empresas con inversiones mayores a ',INV_EXT,' fueron: ',cant_emp);
end.
