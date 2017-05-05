domains
	Nama,Jeniskelamin,NIK=string	
	kondisi = cond*
	cond = string
	
facts
	orang(Nama,Jeniskelamin,NIK)
	namakelompok(kondisi)
	false(cond)
	
	
predicates
	nondeterm lihat(kondisi)
	nondeterm mulai
	nondeterm pilx0(char)
	nondeterm pilx1(char)
	nondeterm pilx2(char)
	nondeterm pilx3(char)
	nondeterm pilx4(char)
	nondeterm pil1(char)
	nondeterm pil3(char)
	nondeterm pil4(char)
	nondeterm pil5(char)
	nondeterm pil6(char)
	nondeterm per2
	nondeterm per3
	nondeterm per4
	nondeterm per5		
	nondeterm punish1	
	nondeterm punish2	
	nondeterm reward3	
	nondeterm reward2
	nondeterm reward1
	nondeterm salah
	ans(char,char)
clauses
ans(Y,Y):-!.
ans(_,_):-fail.
	namakelompok(["1. ","Aqsa Aditra  ","1515015152\n","2. ","Resky Lestari  ","1515015161\n","3. ","M. Aidil Amin  ","1515015167"]).
	mulai:-
	nl,
			write("				-----------------------------------------------------------------------------------"),nl,
				
				
				
                        write("				|					   |"),nl,
                        write("				|					   |"),nl,
                        write("				|		WELCOME		   |"),nl,
                        write("				|	KELOMPOK 1 KELAS D1 2015	   |"),nl,
                        write("				|					   |"),nl,
  			write("				-----------------------------------------------------------------------------------"),nl,nl,nl,
  			namakelompok(Kelompok),
  			lihat(Kelompok),
  			nl,nl,
  			write("Masukkan Nama Karyawan Anda = "),
  			readln(Nama),
  			write("Masukkan Jenis Kelamin = "),
  			readln(Jeniskelamin),nl,
  			write("Masukkan NIK Karyawan Anda = "),
  			readln(NIK),nl,
  			write("Nama Karyawan: "),
  			write(Nama),nl,
  			write("Jenis Kelamin: "),
  			write(Jeniskelamin),nl,
  			write("NIK: "),
  			write(NIK),nl,
  			write("apakah data sudah benar Y/T?"),
  			readchar(A), pil1(A).
  			pil1(A):-ans(A,'Y'),per2.
  			pil1(A):-ans(A,'y'),per2.
			pil1(A):-ans(A,'T'),mulai.
			pil1(A):-ans(A,'t'),mulai.
  			pil1(_):-salah,mulai.
  			
	 lihat([H|T]):-   
	 not(false(H)),
	 write(H),  
	 lihat(T).
	 
	 lihat([H|_]):-
	 assertz(false(H)). 
	
	per2:-
	nl,nl,
	write("Apakah dia seorang karyawan yang tepat waktu? Y/T"),
	readchar(A), pil3(A).
	pil3(A):-ans(A,'Y'),per3.
	pil3(A):-ans(A,'y'),per3.
	pil3(A):-ans(A,'t'),punish1.
	pil3(A):-ans(A,'T'),punish1.
	pil3(_):-salah,per2.

	per3:-
	nl,nl,
	write("Apakah dia seorang yang bertanggung jawab? Y/T"),
	readchar(A), pil4(A).
	pil4(A):-ans(A,'Y'),per4.
	pil4(A):-ans(A,'y'),per4.
	pil4(A):-ans(A,'t'),punish2.
	pil4(A):-ans(A,'T'),punish2.
	pil4(_):-salah,per3.
	
	per4:-
	nl,nl,
	write("apakah dia seorang pekerja keras Y/T"),
	readchar(A), pil5(A).
	pil5(A):-ans(A,'Y'),per5.
	pil5(A):-ans(A,'y'),per5.
	pil5(A):-ans(A,'T'),reward3.
	pil5(A):-ans(A,'t'),reward3.
	pil5(_):-salah,per4.
	
	
	per5:-
	nl,nl,
	write("Apakah dia memiliki kerjasama yang baik? Y/T"),
	readchar(A), pil6(A).
	pil6(A):-ans(A,'Y'),reward1.
	pil6(A):-ans(A,'y'),reward1.
	pil6(A):-ans(A,'T'),reward2.
	pil6(A):-ans(A,'t'),reward2.
	pil6(_):-salah,per5.
	

	
	punish1:-
	nl,nl,
	write("--MAAF KARYAWAN ANDA PANTAS DI-PHK--"),nl,nl,nl,
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx1(A).
	pilx1(A):-ans(A,'Y'),mulai.
	pilx1(A):-ans(A,'y'),mulai.
	pilx1(A):-ans(A,'T'),exit.
	pilx1(A):-ans(A,'t'),exit.
	pilx1(_):-salah,punish1.
	
	punish2:-
	nl,nl,
	write("-KARYAWAN ANDA PANTAS MENDAPATKAN PEMOTONGAN GAJI SEBESAR 20%-"),nl,nl,nl,
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx0(A).
	pilx0(A):-ans(A,'Y'),mulai.
	pilx0(A):-ans(A,'y'),mulai.
	pilx0(A):-ans(A,'T'),exit.
	pilx0(A):-ans(A,'t'),exit.
	pilx0(_):-salah,punish2.
	
	reward3:-
	nl,nl,
	write("*KARYAWAN ANDA BERHAK MENDAPATKAN UANG TUNAI Rp 5.000.000,-*"),nl,nl,nl,
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx2(A).
	pilx2(A):-ans(A,'Y'),mulai.
	pilx2(A):-ans(A,'y'),mulai.
	pilx2(A):-ans(A,'T'),exit.
	pilx2(A):-ans(A,'t'),exit.
	pilx2(_):-salah,reward3.
	
	reward2:-
	nl,nl,
	write("**KARYAWAN ANDA BERHAK MENDAPATKAN SEPEDA MOTOR DAN UANG TUNAI SENILAI Rp 10.000.000,-**"),nl,nl,nl,
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx3(A).
	pilx3(A):-ans(A,'Y'),mulai.
	pilx3(A):-ans(A,'y'),mulai.
	pilx3(A):-ans(A,'T'),exit.
	pilx3(A):-ans(A,'t'),exit.
	pilx3(_):-salah,reward2. 
	
	reward1:-
	nl,nl,
	write("____________________________________________________________"),nl,
	write("|                                                         |"),nl,
	write("|***KARYAWAN ANDA BERHAK MENDAPATKAN MOBIL DAN RUMAH***|"),nl,
	write("|_________________________________________________________|"),
	nl,nl,nl,    
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx4(A).
	pilx4(A):-ans(A,'Y'),mulai.
	pilx4(A):-ans(A,'y'),mulai.
	pilx4(A):-ans(A,'T'),exit.
	pilx4(A):-ans(A,'t'),exit.
	pilx4(_):-salah,reward1.
	
	
	salah:-
	write("\n\nANDA MEMASUKKAN INPUT YANG SALAH").
	

		
goal
mulai.