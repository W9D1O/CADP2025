Program ej2;

const
  fin = 500;
  INS_POS = 4;
type
  arr = array[1..fin]of string;

procedure cargar_vector(var v:arr;var dl:integer);

begin
  writeln('Ingrese el nombre del alumno: ');
  readln(v[dl]);
  dl:= dl + 1;
  while (v[dl] <> 'zzz') and (dl < 500)do begin
  writeln('Ingrese el nombre del alumno: ');
  readln(v[dl]);
  dl:= dl + 1;
  end;
end;

function esta(vn:string;nom:string):boolean;
begin
  esta:= vn = nom;
end;
procedure eli_nom(var v:arr;dl:integer;nom:string);

var
  i:integer;
  vf:boolean;
begin
  vf:=false;
  for i:= 1 to dl do begin
    { Si se encuentra el nombre se cambia el valor de vf a true, por lo que
    en la proxima iteracion no entra}
     if esta(v[i],dl]) and (not vf)then
       vf:= not vf;
    {Cuando ve es true lo que hace es empezar a mover los elementos del array}
     if (vf) and (i < fin) then
       v[i]:= v[i + 1];
   end;
   {Si se encontro el nombre se decrementa dl}
   if vf then
     dl:= dl - 1;
    
end;

procedure insertar(var cnom:string;nom:string);
begin
  cnom:=nom;
end;

procedure agregar(var v[dl];var dl:integer;nom:string);

begin
  insertar(v[dl],nom);
  dl:= dl + 1;
end;

var
  nom:string;
  nombres:arr;
  dl:integer;
begin
  dl:= 0;
  cargar_vector(nombres; dl);
  writeln('Ingrese el nombre que desea eliminar: ');
  readln(nom);
  eli_nom(nombres;dl;nom);
  writeln('Ingrese el nombre que desea que sea insertado en la cuarta posicion: ');
  insertar(v[INS_POS]);
  if INS_POS > dl then
    dl:= INS_POS - dl + dl;
  writeln('Ingrese el nombre que desea agregar: ');
  readln(nom);
  if dl < 500 then begin
    agregar[v[dl + 1],dl,nom);
    dl:= dl + 1
    end
    else
      writeln('El nombre no fue agregado, el vector se encuentra complete');
  end.

