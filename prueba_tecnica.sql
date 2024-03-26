create TABLE MOVIES(
    show_id varchar (max),
    director VARCHAR(max),
	PELICULA VARCHAR(max),
    PAIS VARCHAR(max),
	tipo VARCHAR(max)
);

CREATE TABLE DATE_MOVIE(
    show_id varchar(max),
    LANZAMIENTO int,
	AÑO_AGREGADO date

);

CREATE TABLE TIME_MOVIE(
    show_id varchar(max),
    DURACION_MIN VARCHAR(max),
	TEMPORADAS VARCHAR(max)
);
INSERT INTO MOVIES(show_id , director,PELICULA,PAIS,tipo)
SELECT show_id , director , title , country , type FROM NETFLIX_LIMPIO_SQL 

INSERT INTO DATE_MOVIE(show_id , AÑO_AGREGADO , LANZAMIENTO)
SELECT show_id , date_added , release_year FROM NETFLIX_LIMPIO_SQL 

INSERT INTO TIME_MOVIE(show_id , duracion_min , temporadas)
SELECT show_id , duration_min , duration FROM NETFLIX_LIMPIO_SQL 

select a.pelicula , b.lanzamiento , b.año_agregado from MOVIES a
left join DATE_MOVIE b on a.show_id = b.show_id
