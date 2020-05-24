uses crt;
var
 a, x, y: real;
begin
  write('Input a:');
  read(a);
  write('Input x:');
  read(x);
  y:=abs(exp(abs(x-(a*arctan(2*(a*x-0.441))))) - sqrt((exp(ln(a)*5)-sqrt(ln(x)))/(cos(abs(a*x)))));
  writeln('Y= ',y:5:2);
end.
