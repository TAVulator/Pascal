uses crt;
var
  i, j, n: integer;
  a: array of integer;
begin
  write('N: ');
  readln(n);
  setlength(a,n);
  for i:=1 to n do
    begin
      write(i,': ');
      readln(a[i-1]);
    end;
  write('Array: ');
  for i:=1 to n-1 do
    write(a[i-1],', ');
  writeln(a[length(a)-1]);

  for i:=1 to n-1 do
    for j:=1 to n-i do
            if (a[j-1] < a[j]) then
                 begin
                    a[j-1]:=a[j-1]+a[j];
                    a[j]:=a[j-1]-a[j];
                    a[j-1]:=a[j-1]-a[j];
                end;
  write('Sorted array: ');
  for i:=1 to n-1 do
    write(a[i-1],', ');
  writeln(a[length(a)-1]);


  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
