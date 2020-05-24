uses crt;
var
 a, b: integer;
begin
  write('Input A:');
  read(a);
  write('Input B:');
  read(b);
  if a<>b then
    a:=a+b
  else
    a:=0;
  b:=a;
  writeln('A= ',a,'    B= ',b);
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
