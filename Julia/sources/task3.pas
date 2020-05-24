uses crt;
var
 a, b, m, y: real;
begin
  write('Input a:');
  read(a);
  write('Input b:');
  read(b);
  write('Input m:');
  read(m);
  if m<=-5 then
    y:=m*m-2*m+1
  else if m>=2 then
    y:=a*m+b
  else
    y:=m+a;
  writeln('Y= ',y:5:2);
end.
