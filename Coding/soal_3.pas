program soal_3;
uses crt;

var
i, n, x: integer;

begin
    clrscr;
    write('Tinggi segitiga: '); read(n);
    
    for i:= 1 to n do
        begin
            for x:= 1 to i do
                begin
                    if (x mod 2 = 0) then
                    write('0 ')
                    else 
                    write('1 ')

                end;
            writeln();
        end;

end.