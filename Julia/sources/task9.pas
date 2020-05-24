uses crt;

function sum_cifr(n:integer):integer;
var m,s:integer;
begin
 m:=n;
 s:=0;
 repeat
  s:=s+m mod 10;
  m:=m div 10;
 until m=0;
 sum_cifr:=s
end;

var n,s,i,k:integer;
begin
 repeat
  write('n>1 n=');
  readln(n);
 until n>1;
 s:=sum_cifr(n);
 k:=0;
 write('Result: ');
 for i:=1 to n-1 do
  if sum_cifr(i)=s then
   begin
    write(i,' ');
    k:=1;
   end;
 writeln;
 if k=0 then write('Takih chisel net');
end.
