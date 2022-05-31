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
  
   if ((a < (b+c)) and (b < (a+c)) and (c < (b+c))) then  {verificando se é um triangulo válido}
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
      Write('Triangulo não válido!!');
End.