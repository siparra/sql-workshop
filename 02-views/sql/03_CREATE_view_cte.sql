DROP VIEW IF EXISTS computadoras_info;

CREATE VIEW computadoras_info AS
WITH procesadores AS
(
	SELECT *
		,CASE WHEN precio < 300 THEN 'C'
			WHEN precio BETWEEN 300 AND 400 THEN 'B'
			WHEN precio > 400 THEN 'A'
			ELSE NULL
		END AS gama
	FROM public.componentes
	WHERE id_componente IN (1, 4, 7)
)

,ram AS
(
	SELECT *
		,CASE WHEN precio < 100 THEN 'C'
			WHEN precio BETWEEN 100 AND 199 THEN 'B'
			WHEN precio >= 200 THEN 'A'
			ELSE NULL
		END AS gama
	FROM public.componentes
	WHERE id_componente IN (2, 5, 8)
)

,discos AS
(
	SELECT *
		,CASE WHEN precio < 100 THEN 'C'
			WHEN precio BETWEEN 100 AND 199 THEN 'B'
			WHEN precio >= 200 THEN 'A'
			ELSE NULL
		END AS gama
	FROM public.componentes
	WHERE id_componente IN (3, 6, 9)
)

SELECT * FROM procesadores
UNION
SELECT * FROM ram
UNION
SELECT * FROM discos
;
