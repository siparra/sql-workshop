CREATE OR REPLACE FUNCTION update_computadora(p_id_computadora INTEGER, p_nombre_computadora VARCHAR)
RETURNS VARCHAR
LANGUAGE plpgsql AS $$
DECLARE
    --variable declaration
    v_filas_actualizadas INTEGER;
	v_mensaje VARCHAR;
BEGIN
    --do update
    UPDATE computadoras
    SET nombre_computadora = p_nombre_computadora
    WHERE id_computadora = p_id_computadora;

    --get number of updated rows
    GET DIAGNOSTICS v_filas_actualizadas = ROW_COUNT;
	
    --set message
	v_mensaje := v_filas_actualizadas || ' rows updated';

    --return message
    RETURN v_mensaje;

    --error handling
    EXCEPTION
        WHEN OTHERS THEN
            v_mensaje := 'Error: ' || SQLERRM;
            RETURN v_mensaje;
END;
$$;