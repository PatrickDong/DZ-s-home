var f:array[0..500,0..500] of longint;
    i,j,k,n,s,t,a1,a2,b1,b2:longint;
function max(a,b:longint):longint;
begin
  if a>b then exit(a)
  else exit(b);
end;
begin
  readln(a1,b1);
  readln(a2,b2);
  fillchar(f,sizeof(f),0);
 // f[1,1]:=1;
  for i:=1 to a1 do
    for j:=1 to b1 do
      begin
        if (i>=a2)and(j>=b2) then
          f[i,j]:=max(f[i,j],f[i-a2,j-b2]+1);
        if (i>=b2)and(j>=a2) then
          f[i,j]:=max(f[i,j],f[i-b2,j-a2]+1);
        if i>1 then
          f[i,j]:=max(f[i,j],f[i-1,j]);
        if j>1 then
          f[i,j]:=max(f[i,j],f[i,j-1]);
      end;
  s:=0;
  for i:=1 to a1 do
    for j:=1 to b1 do
      if f[i,j]>s then s:=f[i,j];
  writeln(s);
  for i:=1 to a1 do begin
    for j:=1 to b1 do
      write(f[i,j],' ');
    writeln;
  end;
end.
