uses crt;
var
  i, x, sum: integer;
begin
  writeln('Input numbers. 10000 for end.');
  i:=1;
  sum:=0;
  write(i,': ');
  readln(x);
  while x <> 10000 do
    begin
      if x>0 then
        sum:=sum+x;
      i:=i+1;
      write(i,': ');
      readln(x);
    end;
  writeln('Summ = ',sum);
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
