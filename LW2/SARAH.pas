PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  Dos;
VAR
  Str: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Str := GetEnv('QUERY_STRING');
  IF Str = 'lanterns=1'
  THEN
    WRITELN('LAND')
  ELSE
    BEGIN
      IF Str = 'lanterns=2'
      THEN
        WRITELN('SEA')
      ELSE
        WRITELN('SARAH DIDNT SAY ANYTHING')
    END
END.