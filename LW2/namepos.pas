PROGRAM workQueryString(INPUT, OOUTPUT);
USES
  Dos;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  X: INTEGER;
BEGIN
  X := POS(Key, GetEnv('QUERY_STRING')) + LENGTH(Key) + 1;
  GetQueryStringParameter := COPY(GetEnv('QUERY_STRING'), X, POS('?', GetEnv('QUERY_STRING')))
END;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('First Name: ', GetQueryStringParameter('last_name'));
  WRITELN('First Name: ', GetQueryStringParameter('age'))
END.