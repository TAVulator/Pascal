uses crt;
var
  N, sum: integer;

begin
  write('Input N:');
  readln(N);
  sum:=0;
  while N<>0 do
    begin
      sum:=sum+sqr(N);
      N:=N-1;
    end;
  writeln('Summ of sqares of 1..',N,' = ',sum);
end.
