uses crt;
const
  N = 50;
var
  a: array[1..N] of integer;
  i, sum: integer;
begin
  sum:=0;
  writeln('Zapolnite massiv iz ',N,' chisel:');
  for i:=1 to N do
    begin
      write(i,': ');
      readln(a[i]);
      if odd(i) and not odd(a[i]) then
        sum:=sum+a[i];
    end;
  writeln('Srednee arifmeticheskoe = ',sum/25:3:2);
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
