PROGRAM HelloDear(INPUT, OUTPUT);
USES
  Dos;
VAR
  Name: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := COPY(GetEnv('QUERY_STRING'), 6, LENGTH(GetEnv('QUERY_STRING')));
  WRITELN('Hello, dear ', Name, '!')
END.