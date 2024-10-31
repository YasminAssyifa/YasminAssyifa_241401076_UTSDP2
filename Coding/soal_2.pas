program soal_2;
uses crt;

var
n, i, x, xx, tot: integer;
rata: real;

begin
    clrscr;
    write('masukkan jumlah angka n: '); read(N);
    x:= 0;

    for i := 1 to n do
    begin
       write('Angka ke-',i,' : '); read(xx);
        x:= x + xx;
    end;
    
    rata:= x / n;

    writeln('jumlah total: ',x);
    writeln('Rata-rata: ',rata:5:1);

end.