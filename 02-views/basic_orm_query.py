import sqlalchemy
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey
from sqlalchemy.orm import declarative_base, relationship, joinedload, Session

Base = declarative_base()


class Computadora(Base):
    __tablename__ = "computadoras"
    id_computadora = Column(Integer, primary_key=True)
    nombre_computadora = Column(String)
    componentes = relationship("ComputadoraComponente", back_populates="computadora")


class Componente(Base):
    __tablename__ = "componentes"
    id_componente = Column(Integer, primary_key=True)
    componente = Column(String)
    id_fabricante = Column(Integer, ForeignKey("fabricantes.id_fabricante"))
    fabricante = relationship("Fabricante")
    computadoras = relationship("ComputadoraComponente", back_populates="componente")


class Fabricante(Base):
    __tablename__ = "fabricantes"
    id_fabricante = Column(Integer, primary_key=True)
    nombre_fabricante = Column(String)
    pais_fabricante = Column(String)
    componentes = relationship("Componente", back_populates="fabricante")


class ComputadoraComponente(Base):
    __tablename__ = "computadorascomponentes"
    id_computadora = Column(Integer, ForeignKey("computadoras.id_computadora"), primary_key=True)
    id_componente = Column(Integer, ForeignKey("componentes.id_componente"), primary_key=True)
    computadora = relationship("Computadora", back_populates="componentes")
    componente = relationship("Componente", back_populates="computadoras")


def main():

    DATABASE_URL = "postgresql://postgres:postgres@localhost/sql-workshop"

    engine = create_engine(DATABASE_URL)

    try:
        with engine.connect() as connection:
            print("Conexión exitosa!")
    except Exception as e:
        print(f"Error al conectarse a la base de datos: {e}")

    with Session(engine) as session:
        resultados = (
            session.query(
                Computadora.nombre_computadora,
                Componente.componente,
                Fabricante.nombre_fabricante,
                Fabricante.pais_fabricante,
            )
            .select_from(Computadora)
            .join(ComputadoraComponente)
            .join(Componente)
            .join(Fabricante)
            .all()
        )

        for resultado in resultados:
            print(resultado)

    engine.dispose()


if __name__ == "__main__":
    main()
