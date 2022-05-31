program Turno_de_trabalho;
var
  hora, turno, user :string;
begin
write('Digite seu nome: ');
readln(user);
write('Digite seu horário de trabalho: ');
readln(hora);
writeln;
if (hora >= '06h') and (hora < '14h') then
  begin
  turno:=('Manhã');
  write(user, ' seu turno de trabalho é ', turno);
  end
else
  if (hora >= '14h') and (hora < '22h') then
    begin
    turno:=('Tarde');
    write(user, ' seu turno de trabalho é ', turno);
    end
  else
    if (hora >= '22h') or (hora < '06h') then
      begin
      turno:=('Noite');
      write(user, ' seu turno de trabalho é ', turno);
      end;
readln;
end.