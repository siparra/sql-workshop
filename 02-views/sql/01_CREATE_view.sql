CREATE VIEW computadoras_info AS
SELECT
    nombre_computadora,
    componente,
    nombre_fabricante,
    pais_fabricante
FROM public.computadoras cras
JOIN public.computadorascomponentes cc 
    ON cras.id_computadora = cc.id_computadora
JOIN public.componentes ctes 
    ON cc.id_componente = ctes.id_componente
JOIN public.fabricantes f 
    ON ctes.id_fabricante = f.id_fabricante
;
