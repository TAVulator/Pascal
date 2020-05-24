uses crt;
var a:array[1..100,1..100] of real;
    m,n,i,j,mn,mx:byte;
    buf:real;
begin
randomize;
write('Kolichestvo strok n=');
readln(n);
write('Kolichestvo stolbcov m=');
readln(m);
writeln('Ishodnaya matrica:');
for i:=1 to n do
 begin
   for j:=1 to m do
    begin
     a[i,j]:=5*random(20);
     write(a[i,j]:4:0);
    end;
   writeln;
 end;
for i:=1 to n do
 begin
  mn:=1; mx:=1;
  for j:=1 to m do
   begin
    if a[i,j]<a[i,mn] then mn:=j;
    if a[i,j]>a[i,mx] then mx:=j;
   end;
   buf:=a[i,mn];
   a[i,mn]:=a[i,mx];
   a[i,mx]:=buf;
 end;
writeln(#13,'Novaya matrica:');
for i:=1 to n do
 begin
  for j:=1 to m do
  write(a[i,j]:4:0);
  writeln;
 end;
readln
end.
