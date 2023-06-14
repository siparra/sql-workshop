import sqlalchemy
from sqlalchemy import create_engine, text
from sqlalchemy.orm import Session

def main():

    DATABASE_URL = "postgresql://postgres:postgres@localhost/sql-workshop"

    engine = create_engine(DATABASE_URL)

    try:
        with engine.connect() as connection:
            print("Conexión exitosa!")
    except Exception as e:
        print(f"Error al conectarse a la base de datos: {e}")


    # sql_query = text("""
    #     SELECT nombre_computadora, componente, nombre_fabricante, pais_fabricante
    #     FROM public.computadoras
    #     JOIN public.computadorascomponentes
    #         ON computadoras.id_computadora = computadorascomponentes.id_computadora
    #     JOIN public.componentes
    #         ON computadorascomponentes.id_componente = componentes.id_componente
    #     JOIN public.fabricantes
    #         ON componentes.id_fabricante = fabricantes.id_fabricante
    # """)

    sql_query = text(""" SELECT * FROM computadoras_info; """)

    with Session(engine) as session:
        resultados = session.execute(sql_query).fetchall()

        for resultado in resultados:
            print(resultado)

    engine.dispose()

if __name__ == "__main__":
    main()
