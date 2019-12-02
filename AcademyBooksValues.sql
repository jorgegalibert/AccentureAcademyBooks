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
('Fantástico','El término literatura fantástica alude a un género narrativo basado sobre todo en los elementos de fantasía, dentro del cual se pueden agrupar varios subgéneros, entre los que están la literatura de terror, ciencia ficción o la literatura gótica.'),
('Drama','El género dramático es aquel que representa algún episodio o conflicto de la vida de los seres humanos por medio del diálogo de los personajes. Sus rasgos más característicos son el uso del diálogo y que no aparece la figura del narrador.'),
('Científico','Un texto científico, o sea una publicación científica o comunicación científica, es uno de los últimos pasos de cualquier investigación científica, previo al debate externo.'),
('Novela','La novela es una obra literaria en la que se narra una acción fingida en todo o en parte y cuyo fin es causar placer estético a los lectores con la descripción o pintura de sucesos o lances interesantes así como de personajes, pasiones y costumbres, que en muchos casos sirven de insumos para la propia reflexión o introspección. '),
('Cuento','Un cuento (del latín, compŭtus, cuenta)1​ es una narración breve creada por uno o varios autores, basada en hechos reales o ficticios, cuya trama es protagonizada por un grupo reducido de personajes y con un argumento relativamente sencillo.'),
('Biográfico','La biografía es la historia de la vida de una persona narrada por otra persona, en pleno sentido desde su nacimiento hasta su muerte, consignando sus hechos logrados y fracasos.');

INSERT INTO Editorial
(Nombre,PaisDeOrigen,Especialidad,FechaDeFundacion)
VALUES
('Planeta','Argentina','General',DATEFROMPARTS(1985,3,22)),
('Aguilar','Argentina','General',DATEFROMPARTS(2000,5,11)),
('Oxford','Inglaterra','Idiomas',DATEFROMPARTS(1830,11,4)),
('Cientific','España','Especializada',DATEFROMPARTS(2018,12,9));
