Program matriz ;
var
matriz:array[1..4,1..4] of integer;
matrizMult:array[1..4] of integer;
var x,y,maiorL, menorL, maiorC, menorC, soma, mult, aux :integer;

Begin
  For x:=1 to 4 do
  For y:=1 to 4 do
  Begin
    Write('Insira o elemento na posicao [',x,',',y,'] da matriz: ');
    Readln(matriz[x,y]);
  End;
  
  {LEITURA DA MATRIZ}
  For x:=1 to 4 do
  Begin;
    Writeln();
    For y:=1 to 4 do
    Begin
      Write(matriz[x,y]);
      Write('    ');
    End;
  End;
  Writeln('');
  Writeln('');
  Writeln('');
  
  {*LINHA 1*}
  Writeln('1ª Linha');
  maiorL := matriz[1,1];
  menorL := matriz[1,1];
  For x:=1 to 4 do
  Begin;
    Write(matriz[1,x]);
    Write('    ');
    
    if (matriz[1,x] > maiorL) then
    maiorL:= matriz[1,x];
    if (matriz[1,x] < menorL) then
    menorL:= matriz[1,x];
  End;
  Writeln();
  Writeln('O Maior é: ',maiorL, ' e o Menor é: ',menorL);
  Writeln('');
  Writeln('');
  
  {*COLUNA 3*}
  Write('3ª COLUNA');
  maiorC := matriz[1,3];
  menorC := matriz[1,3];
  For x:=1 to 4 do
  Begin;
    Writeln();
    Write(matriz[x,3]);
    Write('    ');
    if (matriz[x,3] > maiorC) then
    maiorC:= matriz[x,3];
    if (matriz[x,3] < menorC) then
    menorC:= matriz[x,3];
  End;
  Writeln();
  Writeln('O Maior e: ',maiorC, ' e o Menor e: ',menorC);
  Writeln('');
  
  { SOMA DIAGONAL PRINCIPAL }
  Writeln('SOMA DIAGNAL PRINCIPAL');
  soma:=0;
  For x:=1 to 4 do
  Begin;
    
    Write(matriz[x,x]);
    Write('    ');
    soma := soma + matriz[x,x];
  end;
  Writeln();
  Writeln('A SOMA é: ',soma);
  Writeln('');
  
  { MULT DIAGONAL SECUNDARIA }
  Writeln('MULT DIAGNAL SECUNDARIA');

  aux:=4;
  For x:=1 to 4 do
  Begin;
    
    Write(matriz[aux,x]);
    Write('    ');
    matrizMult[x] :=  matriz[aux,x];
    aux:= aux-1;
  end;
  mult:= matrizMult[1];
  For x:=1 to 3 do
  Begin;
  	 mult:= mult *matrizMult[x+1] 
  end;
  Writeln();
  Writeln('A Multiplicacao é: ',mult);
  Writeln('');
  
End.