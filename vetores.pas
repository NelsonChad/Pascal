Program lista ;
var
i,k,temp, op, maior, menor:integer;
a: array[1..10] of integer;

Begin
  Writeln ('Insira valores');
  for i:=1 to 10 do
  begin
    readln (a[i]);
  end;
  
  {MENU}
  Writeln ('**************Menu*************');
  writeln ('+    ESCOLHA UMA OPCAO        +');
  writeln ('+ 1- Ordem creccente          +');
  writeln ('+ 2- ordem decrescente        +');
  writeln ('+                             +');
  
  readln (op);
  Case op Of
    1 : Begin
      Writeln ('CRESCENTE');
      (*Ordena Array em ordem crescente*)
      for i:=1 to 10 do begin
        for k:=i+1 to 10 do
        begin
          if a[i] > a[k] then begin
            temp:=a[i];
            a[i]:=a[k];
            a[k]:=temp;
          end;
        end;
      end;
      writeln;
      writeln;
      writeln('REULTADO: ');
      (*Mostra o resultado*)
      for i:=1 to 10 do begin
        write(a[i],',');
      end;
      writeln;
    End;
    
    2 : Begin
      Writeln ('DECRESCENTE');
      (*Ordena Array em ordem crescente*)
      for i:=1 to 10 do begin
        for k:=i+1 to 10 do
        begin
          if a[k] > a[i] then begin
            temp:=a[i];
            a[i]:=a[k];
            a[k]:=temp;
          end;
        end;
      end;
      writeln;
      writeln;
      writeln('REULTADO: ');
      (*Mostra o resultado*)
      for i:=1 to 10 do begin
        write(a[i],',');
      end;
      writeln;
    End;
    
    Else Writeln ('Opção Invalida');
  End;
     
  {MAIOR E MENOR}
  maior := a[1];
  menor := a[1];
  For i:=1 to 10 do
  Begin;
    Write(a[i]);
    Write('    ');
    
    if (a[i] > maior) then
    maior:= a[i];
    if (a[i] < menor) then
    menor:= a[i];
  End;
  Writeln();
  Writeln('O Maior é: ',maior, ' e o Menor é: ',menor);
  Writeln('');
  Writeln('');
End.