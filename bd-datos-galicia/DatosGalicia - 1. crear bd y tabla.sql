create database datosGalicia;
use datosGalicia;
create table datosGalicia (
idDatosGalicia int auto_increment primary key,
Provincia varchar (20),
Comarca varchar (30),
Concello varchar (30) unique,
Superficie float,
Mujeres int,
Hombres int
);