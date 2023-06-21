-- 1 creo base de datos peliculas
-- 2 cargo archivos csv peliculas y reparto, agrego id y actor
-- compruebo conexion a tabla peliculas
select*from peliculas; 
-- compruebo conexion a tabla reparto
select*from reparto; 
-- edito tabla peliculas y le asigno llave primaria
alter table peliculas add constraint pk_id primary key(id); 
-- edito tabla reparto y le asigno llave foranea, relacionados por id
alter table reparto add constraint fk_id foreign key(id) references peliculas(id);
-- 3 obtengo id pelicula titanic
select*from peliculas where pelicula = 'Titanic'; 
-- 4 listado de actores pelicula titanic
select*from reparto where id = '2'; 
-- 5 cantidad de peliculas donde participa harrison ford
select id,actor from reparto where actor = 'Harrison Ford'; 
-- 6 peliculas estrenadas entre 1990 a 1999 ordenadas ascendentemente
select pelicula, "Año estreno" from peliculas where "Año estreno" between 1990 and 1999 order by "Año estreno" asc;
-- 7 logitud de titulos 
select pelicula, length(pelicula) as longitud_titulo from peliculas;
-- 8 titulo de pelicula mas largo
select pelicula, length(pelicula) as longitud_titulo from peliculas order by longitud_titulo desc limit 1;
