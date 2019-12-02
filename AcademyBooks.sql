
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
	Id int primary key identity(1,1),
	Autor_Id int not null,
	Libro_Id int,
	CONSTRAINT FK_AUTOR FOREIGN KEY (Autor_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_LIB FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
);

Create Table PublicadoPor
(	
	Id int primary key identity(1,1),
	Editorial_Id int not null,
	Libro_Id int not null,
	CONSTRAINT FK_EDITORIAL FOREIGN KEY (Editorial_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_LIBRO FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
);

Create Table GeneroLibro
(	
	Id int primary key identity(1,1),
	Genero_Id int not null,
	Libro_Id int not null,
	CONSTRAINT FK_GENERO FOREIGN KEY (Genero_Id) 
		REFERENCES Autor(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_BOOK FOREIGN KEY (Libro_Id) 
		REFERENCES Libro(Id)
		ON DELETE CASCADE,
);

--INSERT INTO Libro
--(Titulo, Autor,Formato,FechaDePublicacion,Idioma,ISBN,NumPags,Editorial,Genero)
--Values
--('El Señor de los anillos','Tolkien','Virtual',DATEFROMPARTS(1950,2,12),'Ingles',4332,579,'Planeta','Fantasia');
--select * from Libro

--DROP DATABASE AccentureAcademyBooks;