program ej3;

const
  dimF = 50;
type
 vector = array[1..dimF] of integer;

{1) a}
procedure imprime(v:vector;dimL:integer);
var
  i:integer;
begin
  for i:= i to dimL do 
    writeln(v[i]);
end;

{1) b}
procedure reverse_print(v:vector;dimL:integer);

var
  i:integer;
begin
  for i:= dimL downto 1 do
    writeln(v[i]);
end;

{1) c}
procedure imprime_dijunto(v:integer:dimL:integer);

var
  i,j:integer;

begin
  for i:= dimL div 2 downto 1 do 
    writeln(v[i]);

  for j:= dimL div 2 + 1 to dinL do
    writeln(v[j]);
end;

{1) d}
procedure print_range(v:vector:x,y:integer);

var
  i:integer;
begin
  if x <= y then begin
    for i:= x to t do
      writeln(v[i]);
    end
    else
    for i:= x downto y do
      writeln(v[i]);
end;

{1) e. rehace 1)a.}
procedure print_xy(v:vector;x,y:integer);

var
  i:integer;
begin
  if x <= y then begin
    for i:= x to y do
      writeln(v[i]);
    end
    else
    for i:= y to x do
      writeln(v[i]);
end;

{1)e rehace 1)b.}
procedure print_yx(v:vector;x,y:integer);

var
  i:integer;
begin
  if x <= y then begin
    for i:= y downto x do
      writeln(v[i]);
    end
    else
    for i:= x downto y do
      writeln(v[i]);
end;


procedure print_xy_mitad(v:vector;x,y:integer);

var
  i:integer;
begin
  if x <= y then begin
    for i:= (y-x) div 2 + x  downto x do
      writeln(v[i]);
    for i:= (y -x) div 2 + x + 1 to y to
      writeln(v[i]);
    end
    else begin
    for i:= (x - y) div 2 + y  downto y do
      writeln(v[i]);
    for i:= (x-y) div 2 + y + 1 to x do
      writeln(v[i]);
  end;
end;
