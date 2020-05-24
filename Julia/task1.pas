uses crt;
var
 x, y: real;
begin
  write('Input X:');
  read(x);
  y:=4*(x*x)+2*((x*x)+1);
  writeln('Y= ',y:5:2);
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
