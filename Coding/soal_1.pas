program soal_1;
uses crt;

var
jawaban, hari,nama: string;

pesan, banyak, total_barang, poin: integer;

harga,total_harga, diskon_member, diskon_tambahan, pembayaran: real;

pembayaranpoin: longint;

member: boolean;

begin

    total_harga:= 0;
    total_barang:=0;

    clrscr;
    write('Nama Anggota: '); readln(nama);

    if (nama='-') then
        member:= false
    else
        member:= true;

    write('Hari: '); readln(hari);

    repeat
        writeln('');
        writeln('Selamat Datang!!');
        writeln('---List Produk---');
        writeln('1. Sabun       : Rp.7.000');
        writeln('2. Pasta Gigi  : Rp.16.000');
        writeln('3. Nugget Dino : Rp.15.000');
        writeln('4. Es krim     : Rp.20.000');
        writeln('5. Baterai AAA : Rp.11.000');
        writeln('6. Lampu       : Rp.10.000');
        writeln('7. Susu        : Rp.13.000');
        writeln('8. Keju        : Rp.20.000');

    
        write('Mau produk apa? (1-8) '); readln(pesan);
        write('berapa banyak yang mau dipesan? '); readln(banyak);

        if (hari='senin') then
                case (pesan) of
                1: harga:= 7000 * 0.9;
                2: harga:= 16000 * 0.9;
                3: harga:= 15000;
                4: harga:= 20000;
                5: harga:= 11000;
                6: harga:= 10000;
                7: harga:= 13000;
                8: harga:= 20000;
            else writeln('error')
            end;
        
        if (hari='selasa') then
                case (pesan) of
                1: harga:= 7000;
                2: harga:= 16000;
                3: harga:= 15000 * 0.95;
                4: harga:= 20000 * 0.95;
                5: harga:= 11000;
                6: harga:= 10000;
                7: harga:= 13000;
                8: harga:= 20000;
            else writeln('error')
            end;
        
        if (hari='rabu') then
                case (pesan) of
                1: harga:= 7000;
                2: harga:= 16000;
                3: harga:= 15000;
                4: harga:= 20000;
                5: harga:= 11000 * 0.7;
                6: harga:= 10000 * 0.7;
                7: harga:= 13000;
                8: harga:= 20000;
            else writeln('error')
            end;
        
        if (hari='kamis') then
                case (pesan) of
                1: harga:= 7000;
                2: harga:= 16000;
                3: harga:= 15000;
                4: harga:= 20000;
                5: harga:= 11000;
                6: harga:= 10000;
                7: harga:= 13000 * 0.92;
                8: harga:= 20000 * 0.92;
            else writeln('error')
            end;
                
        total_harga:= total_harga + (harga*banyak);

        total_barang:= total_barang + banyak;

       { //test debug
        writeln('total barang: ',total_barang);
        writeln('total harga: ',total_harga:3:2);}


        write('apakah masih mau membeli? (ya/tidak) : '); readln(jawaban);

    until (jawaban='tidak');

    if (member) then
    diskon_member := 10
    else
    diskon_member := 0;

    if (total_barang >= 10) then
    diskon_tambahan := 5
    else
    diskon_tambahan := 0;

    if (member) and (total_barang >= 10) then
        pembayaran:= total_harga * 0.85

    else if (member) then
        pembayaran:= total_harga * 0.9

    else if (total_barang >= 10) then
        pembayaran:= total_harga * 0.95

    else pembayaran:= total_harga;

    writeln;

    writeln('Total: ', total_harga:5:2);

    writeln('Diskon: ',diskon_member:2:0,'% +',diskon_tambahan:2:0,'% =',diskon_member+diskon_tambahan:2:0,'%');

    writeln('Pembayaran: ',pembayaran:5:0);

    pembayaranpoin:= trunc(pembayaran);
    poin:= (pembayaranpoin div 50000);
    
    writeln('Poin: ',poin);

    if (poin>=50) then
        writeln('anda mendapat voucher diskon 20% untuk produk apa saja!');

end.