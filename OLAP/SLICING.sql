SELECT W.date, P.nama_pasien, K.jenis_kamar
FROM fact_diagpenyakit FP

	INNER JOIN dimen_waktu
	W ON FP.id_waktu = W.id_waktu
	
	INNER JOIN dimen_dokter
	D ON FP.id_dokter = D.id_dokter
	
	INNER JOIN dimen_pasien
	P ON FP.id_pasien = P.id_pasien

	INNER JOIN dimen_kamar
	K ON FP.id_kamar = K.id_kamar

WHERE D.nama_dokter LIKE 'Tania Ramadan'