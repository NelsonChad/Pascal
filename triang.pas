Program Triangulo;
Uses Crt;
Var
   a, b, c : Integer;
Begin
   Writeln('Digite o lado a do triangulo: ');
   Read(a);
   Writeln('Digite o lado b triangulo: ');
   Read(b);
   Writeln('Digite o lado c do triangulo: ');
   Read(c);
  
   if ((a < (b+c)) and (b < (a+c)) and (c < (b+c))) then  {verificando se � um triangulo v�lido}
   Begin
      if ((a = b) and (b = c)) Then
         Writeln('Triangulo equilatero.')
      else
         if ((a <> b) and (b <> c) and (a <> c)) Then
            Writeln('Triangulo escaleno.')
         else
            Writeln('Triangulo isoceles.');
   End
   Else
      Write('Triangulo n�o v�lido!!');
End.