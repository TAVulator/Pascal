uses crt;
var
  i, N, counter, peoplecount: integer;
  kvmetr: real;
begin
  write('Input N:');
  readln(N);
  counter:=0;
  for i:=1 to N do
    begin
      write('Kvadratnie metri ',i,' semyi: ');
      readln(kvmetr);
  write('Kolichestvo chelovek v ',i,' semye: ');
      readln(peoplecount);
      if kvmetr / peoplecount < 12 then
        counter:=counter+1;
    end;
  Writeln('U ',counter,' rabotnikov zhilishnie usloviya nizhe normy (<12).');
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
