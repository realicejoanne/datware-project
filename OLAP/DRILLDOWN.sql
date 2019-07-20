SELECT
CAST(D.nama_diagnosis AS varchar(50)) AS NamaDiagnosis,
CAST(K.jenis_kamar AS varchar(50)) AS JenisKamar,
AVG(CAST(FK.lama_inap AS decimal(9,2))) AS LamaPenggunaan

FROM fact_kamarpasien FK

	INNER JOIN dimen_diagnosis
	D ON FK.id_diagnosis = D.id_diagnosis

	INNER JOIN dimen_kamar
	K ON FK.id_kamar = K.id_kamar

GROUP BY CAST(D.nama_diagnosis AS varchar(50)),
	CAST(K.jenis_kamar AS varchar(50));