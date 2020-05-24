uses crt;
type
  DArray = array of array of integer;
var
  A: DArray;
  rndx,rndy: byte;
function CreateArray(a,b:byte):DArray;
var
  i,j: byte;
begin
  setlength(Result,a);
  for i:=0 to a-1 do
      begin
        setlength(Result[i],b);
        for j:=0 to b-1 do
          Result[i][j]:=random(100);
      end;
end;

function Func(a:DArray):DArray;
var
  centerX, centerY ,maxX, maxY, max, i, j: byte;
begin
  centerX:=(length(a)-1) div 2;
  centerY:=(length(a[0])-1) div 2;
  writeln('Center [',centerx+1,',',centery+1,']= ',a[centerx][centery]);
  max:=a[0][0];
  for i:=0 to length(a)-1 do
    for j:=0 to length(a[0])-1 do
      if a[i][j] > max then
         begin
           max:=a[i][j];
           maxX:=i;
           maxY:=j;
         end;
  writeln('Maximum [',maxx+1,',',maxy+1,']= ',a[maxx][maxy]);
  Result:=a;
  Result[centerX][centerY]:=Result[centerX][centerY]+Result[maxX][maxY];
  Result[maxX][maxY]:=Result[centerX][centerY]-Result[maxX][maxY];
  Result[centerX][centerY]:=Result[centerX][centerY]-Result[maxX][maxY];
end;

procedure PrintArray(a: DArray);
var
  i,j: byte;
begin
  for i:=0 to length(a)-1 do
    begin
      for j:=0 to length(a[0])-1 do
        write(a[i][j]:3);
      writeln;
    end;
end;

begin
  rndx:=2;
  rndy:=rndx;
  randomize;
  while not (odd(rndx) and odd(rndy)) do
        begin
          rndx:=3+random(10);
          rndy:=3+random(10);
        end;
  A:=CreateArray(rndx,rndy);
  writeln('Array [',rndx,',',rndy,']:');
  PrintArray(A);
  writeln;
  writeln('Modifed array:');
  A:= Func(A);
  PrintArray(A);
  writeln('Press any key for exit');
  repeat
  until keypressed;
end.
