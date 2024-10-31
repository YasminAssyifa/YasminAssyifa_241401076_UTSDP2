program soal_4;
uses crt;

var
n, i, x, z: integer;

prima : boolean;

begin
    clrscr;
    z:=0;
    write('n = '); read(N);

    writeln('Bilangan prima antara 1 dan ',n);

    for i:= 2 to n do
    begin
        prima:= true;
        for x:= 2 to i div 2 do
        begin
            if  (i mod x = 0) then
            begin
                prima:= false;
                break;
            end;
        end;
        
        if prima then
        begin
            if (z > 0) then
            write(', ');
            write(i);
            z:= z+1;
        end;
    end;
    readln;

end.
