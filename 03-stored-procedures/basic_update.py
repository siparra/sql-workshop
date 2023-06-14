import sqlalchemy
from sqlalchemy import create_engine, text, update, table, column
from sqlalchemy.orm import Session

def main():

    DATABASE_URL = "postgresql://postgres:postgres@localhost/sql-workshop"

    engine = create_engine(DATABASE_URL)

    try:
        with engine.connect() as connection:
            print("Conexión exitosa!")
    except Exception as e:
        print(f"Error al conectarse a la base de datos: {e}")

    computadoras = table('computadoras', column('id_computadora'), column('nombre_computadora'))

    condicion = computadoras.c.id_computadora == 3 #set the id you want to update

    nuevos_valores = {
        computadoras.c.nombre_computadora: 'PC Desktop', #set the new value
    }

    consulta_update = update(computadoras).where(condicion).values(nuevos_valores)

    with Session(engine) as session:
        
        #executes the update
        registros_actualizados = session.execute(consulta_update).rowcount

        #commit
        session.commit()

        print(f"{registros_actualizados} registros actualizados")

    engine.dispose()

if __name__ == "__main__":
    main()