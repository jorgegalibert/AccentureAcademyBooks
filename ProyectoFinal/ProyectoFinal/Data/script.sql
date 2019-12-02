  
CREATE DATABASE AccentureAcademyBooks;
GO
--DROP DATABASE AccentureAcademyBooks
USE AccentureAcademyBooks;
GO

CREATE TABLE Libro
(
	Id int primary key identity(1,1),
	Titulo varchar(60) not null,
	Autor varchar(50) not null,
	Formato varchar(20) not null,
	FechaDePublicacion date not null,
	Idioma varchar(20) not null,
	ISBN int not null,
	NumPags int not null,
	Editorial varchar(25)not null,
	Genero varchar(25)not null,
	CONSTRAINT UQ_ISBN UNIQUE (ISBN)
);

CREATE TABLE Genero
(	
	Id int primary key identity(1,1),
	Genre varchar(20) not null,
	Descripcion varchar(8000) not null
);

CREATE TABLE Editorial
(
	Id int primary key identity(1,1),
	Nombre varchar(25) not null,
	PaisDeOrigen varchar(25) not null,
	Especialidad varchar(25) not null,
	FechaDeFundacion date not null
)

CREATE TABLE Autor
(
	Id int primary key identity(1,1),
	Nombre varchar(40) not null,
	Nacionalidad varchar(25) not null,
	LenguaMaterna varchar(25) not null,
	FechaDeNacimiento date not null,
	AreaDeEspecialidad varchar(25) not null
);

Create Table EscritoPor
(	
	Autor_Id int,
	Libro_Id int,
	CONSTRAINT FK_AUTOR FOREIGN KEY (Autor_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_LIB FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
	CONSTRAINT PK_ESCRITO_POR PRIMARY KEY(Autor_Id, Libro_Id)
);

Create Table PublicadoPor
(	
	Editorial_Id int,
	Libro_Id int,
	CONSTRAINT FK_EDITORIAL FOREIGN KEY (Editorial_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_LIBRO FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
	CONSTRAINT PK_PUBLICADO_POR PRIMARY KEY(Editorial_Id, Libro_Id)
);
Create Table GeneroLibro
(	
	Genero_Id int,
	Libro_Id int,
	CONSTRAINT FK_GENERO FOREIGN KEY (Genero_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_BOOK FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
	CONSTRAINT PK_GEN_LIB PRIMARY KEY(Genero_Id, Libro_Id)
);

--INSERT INTO Libro
--(Titulo, Autor,Formato,FechaDePublicacion,Idioma,ISBN,NumPags,Editorial,Genero)
--Values
--('El Señor de los anillos','Tolkien','Virtual',DATEFROMPARTS(1950,2,12),'Ingles',4332,579,'Planeta','Fantasia');
--select * from Libro

--DROP DATABASE AccentureAcademyBooks;


USE AccentureAcademyBooks
SELECT * FROM Libro

INSERT INTO Autor
(Nombre,Nacionalidad,LenguaMaterna,FechaDeNacimiento,AreaDeEspecialidad)
VALUES
('Jorge Luis borges','Argentino','Español',DATEFROMPARTS(1899,8,24),'Cuentos Cortos'),
('J R R Tolkien','Sudafricano','Inglés',DATEFROMPARTS(1892,2,9),'Novelas'),
('Diego Borinsky','Argentino','Español',DATEFROMPARTS(1960,12,2),'Biografias'),
('J K Rowling','Inglesa','Inglés',DATEFROMPARTS(1965,3,17),'Novelas'),
('Julio Verne','Francés','Francés',DATEFROMPARTS(1828,3,24),'Novelas');


INSERT INTO Genero
(Genre,Descripcion)
VALUES
('Policial','Insertar luego'),
('Fantasía','Insertar luego'),
('Épico','Insertar luego'),
('Drama','Insertar luego'),
('Histórico','Insertar luego'),
('Comedia','Insertar luego'),
('Idiomas','Insertar luego'),
('Científico','Insertar luego'),
('Novela','Insertar luego'),
('Cuento corto','Insertar luego'),
('Fábula','Insertar luego'),
('Biográfico','Insertar luego'),
('Poesía','Insertar luego');

INSERT INTO Editorial
(Nombre,PaisDeOrigen,Especialidad,FechaDeFundacion)
VALUES
('Planeta','Argentina','General',DATEFROMPARTS(1985,3,22)),
('Aguilar','Argentina','General',DATEFROMPARTS(2000,5,11)),
('Oxford','Inglaterra','Idiomas',DATEFROMPARTS(1830,11,4)),
('Cientific','España','Especializada',DATEFROMPARTS(2018,12,9));
