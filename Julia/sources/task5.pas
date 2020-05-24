uses crt;
var
  x, y: real;
const
  a:integer = -4;
  b:integer = 4;
  h:real = 1.5;
begin
  writeln('x [',a,';',b,']   h= ',h:5:1);
  x:=a;
  while x <= b do
    begin
      y:=(-2)*sqr(x);
      writeln('| x= ',x:5:1,' | y= ',y:5:1,' |');
      x:=x+h;
    end;
end.
