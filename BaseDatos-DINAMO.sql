#creación de una base de datos desde cero
CREATE DATABASE LA_BASE_DINAMO;

CREATE TABLE Tabla_de_temas(
Nombre_Tema varchar(50) NOT NULL,
Nombre_Articulo varchar (50) NOT NULL,
Id_Articulo int NOT NULL
 );  

ALTER TABLE LA_BASE_GROSA
ADD PRIMARY KEY (Id_Articulo);

CREATE TABLE Tabla_de_articulos(
Nombre_Articulo varchar(50) NOT NULL,
Nombre_Autor varchar(100) NOT NULL,
Año_publicacion DATE,
Id_Articulo int NOT NULL
);

ALTER TABLE Tabla_de_articulos ADD FOREIGN KEY(Id_Articulo)
REFERENCES Tabla_de_temas(Id_Articulo);

INSERT INTO Tabla_de_temas (Nombre_Tema, Nombre_Articulo, Id_Articulo) 
VALUES('Salud','Sedentarismo, la enfermedad del siglo xxi','10.1016/j.arteri.2019.04.004');

INSERT INTO Tabla_de_temas (Nombre_Tema, Nombre_Articulo, Id_Articulo) 
VALUES('Naturaleza', 'Causas e impactos de la deforestación de los bosques nativos de Argentina y propuestas de desarrollo alternativas', '20.500.12123/7992');  

INSERT INTO Tabla_de_temas (Nombre_Tema, Nombre_Articulo, Id_Articulo) 
VALUES('Tecnología','Drones: tecnología con futuro promisorio en la gestión forestal','10.29298/rmcf.v11i61.794');

INSERT INTO Tabla_de_temas (Nombre_Tema, Nombre_Articulo, Id_Articulo) 
VALUES('Arte','Arte y Educación Artística. Una reflexión sobre la creatividad y la interdisciplinariedad de los lenguajes artísticos
', '10.6035/artseduca.6032');	

INSERT INTO Tabla_de_articulos (Nombre_Articulo, Nombre_Autor, Id_Articulo) 
VALUES('Sedentarismo, la enfermedad del siglo xxi','Arocha Rodulfo JI','2019'); 

INSERT INTO Tabla_de_articulos (Nombre_Articulo, Nombre_Autor, Id_Articulo) 
VALUES('Causas e impactos de la deforestación de los bosques nativos de Argentina y propuestas de desarrollo alternativas','Mónaco, Martín H., Peri, Pablo Luis, Medina, Fernando Ariel, Colomb, Hernán Pablo, et al','2020');

INSERT INTO Tabla_de_articulos (Nombre_Articulo, Nombre_Autor, Id_Articulo) 
VALUES('Drones: tecnología con futuro promisorio en la gestión forestal','José Luis Gallardo-Salazar, Marín Pompa-García, Carlos Arturo Aguirre-Salado, Pablito Marcelo López-Serrano, Arnulfo Meléndez-Soto','2020');

INSERT INTO Tabla_de_articulos (Nombre_Articulo, Nombre_Autor, Id_Articulo) 
VALUES('Arte y Educación Artística. Una reflexión sobre la creatividad y la interdisciplinariedad de los lenguajes artísticos','Álvarez García, Francisco José Nieto Miguel, Ignacio','2021');