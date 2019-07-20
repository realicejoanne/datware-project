SELECT D.id_diagnosis, count(P.id_pasien) AS JmlPasien
FROM fact_diagpenyakit FP

	INNER JOIN dimen_pasien
	P ON FP.id_pasien = P.id_pasien
	
	INNER JOIN dimen_diagnosis
	D ON FP.id_diagnosis = D.id_diagnosis

GROUP BY ROLLUP (D.id_diagnosis);

