program ej4;


const
  PI = 3.141516;
var
    dia,radio:real;
begin
    writeln('Ingrese diametro ');
    readln(dia);
    radio:= dia / 2;
    writeln('Este es el valor del radio: ',radio:8:2);
    writeln('El siguiente es el valor del area ',PI*radio*radio:8:2);
    writeln('En ultima instancia disponemos del valor del perimetro  ',dia*PI:8:2);
end.
