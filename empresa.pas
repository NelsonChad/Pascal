Program Empresa ;
Uses crt;

var grupos:array[1..4] of string;
i:integer;
periodo, hora_act, H,m :string;

hora,minuto, segundo, dec_segundo: Word;

Begin
  grupos[1] := 'Grupo DMI';
  grupos[2] := 'Grupo DQ';
  grupos[3] := 'Grupo DF';
  
  GetTime(hora, minuto, segundo,segundo);
  
  {Converte WORD para STRING}
  Str(hora, H);
  Str(minuto, m);
  hora_act := H+':'+m;
  
  writeln('HORA ACTUAL: ', hora_act);
  
  if (hora_act >= '06:00') and (hora_act < '11:45') then
  begin
    periodo:=('Manha');
    write('Período da ',periodo, ', O grupo ', grupos[1], ' irá Trabalhar!');
  end
  else
  if (hora_act >= '12:00') and (hora_act < '17:45') then
  begin
    periodo:=('Tarde');
    write('Período da ',periodo, ', O grupo ', grupos[1], ' irá Trabalhar!');
  end
  else
  if (hora_act >= '18:00') or (hora_act < '22:45') then
  begin
    periodo:=('Noite');
    write('Período da ',periodo, ', O grupo ', grupos[1], ' irá Trabalhar!');
  end;
  
End.