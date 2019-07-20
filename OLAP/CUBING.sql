SELECT
K.jenis_kamar,
D.nama_diagnosis,
COUNT(P.id_pasien) AS JmlPasien

FROM fact_kamarpasien FK

	INNER JOIN dimen_kamar
	K ON FK.id_kamar = K.id_kamar

	INNER JOIN dimen_diagnosis
	D ON FK.id_diagnosis = D.id_diagnosis
	
	INNER JOIN dimen_pasien
	P ON FK.id_pasien = P.id_pasien

GROUP BY CUBE (D.nama_diagnosis, K.jenis_kamar)

ORDER BY (K.jenis_kamar)