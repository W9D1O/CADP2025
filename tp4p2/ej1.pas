Program ej1;
uses
  crt;
const
  final = 500;
type
  arr = array[1..final]of integer;

function a(v:arr;n:integer):boolean;
var
  i:integer;
  vf:boolean;
begin
  vf:= false;
  for i:= 1 to final do
    if(n = v[i])then begin
      vf:= true;
      break;
    end;
  a:=vf;
end;

function b(v:arr;n:integer):boolean;
var
  i:integer;
  vf:boolean;
begin
  vf:=false;
  for i:= 1 to final do begin
    if(v[i] = n)then
      vf:=true;
    if(v[i] >= n)then
      break;
  end;
  b:=vf;
end;

procedure cargar_vector(var v:arr);
var
  r:integer;
  i:integer;
begin
  randomize;
  for i:= 1 to final do begin
    r:=random(MAXINT);
    v[i]:= r;
  end;
  
end;



var
  v:arr;
  n:integer;
begin
  cargar_vector(v);
  writeln('Ingrese ael valor que desea encontrar: ');
  readln(n);
  if a(v,n) then
    writeln('Se encontro ael valor solicitado.')
  else
    writeln('El valor se fue encontrado.');
  writeln('Ahora se esta llamando a b');
  if b(v,n) then
    writeln('Se encontro ael valor solicitado.')
  else
    writeln('El valor se fue encontrado.');

  end.
