from sqlalchemy import create_engine, text

def main():

    DATABASE_URL = "postgresql://postgres:postgres@localhost/sql-workshop"

    engine = create_engine(DATABASE_URL)

    try:
        with engine.connect() as connection:
            print("Conexión exitosa!")
            
            id_computadora = 3
            nombre_computadora = 'PC Desktop'

            query = text("""
                SELECT * FROM update_computadora(:id_computadora, :nombre_computadora);
            """)

            result = connection.execute(query, {"id_computadora": id_computadora, "nombre_computadora": nombre_computadora}).scalar()
            print(result)

    except Exception as e:
        print(f"Error al ejecutar la función: {e}")

    engine.dispose()

if __name__ == "__main__":
    main()