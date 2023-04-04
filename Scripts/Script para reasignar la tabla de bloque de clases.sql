create	 database Planificacion_academica;
use Planificacion_academica;

select * from personal;
call SP_Buscar_Personal('001-010805-1000Y');

select * from bloque;
select * from bloque_clase;
select * from horario_bloque;

select * from bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID WHERE b.ID = 1;


/*Prueba de consulta para colocar los dias */
UPDATE  bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID SET bc.ID_DIA = 1 where hb.ID_DIA = 1;
UPDATE  bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID SET bc.ID_DIA = 2 where hb.ID_DIA = 2;
UPDATE  bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID SET bc.ID_DIA = 3 where hb.ID_DIA = 3;
UPDATE  bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID SET bc.ID_DIA = 4 where hb.ID_DIA = 4;
UPDATE  bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID SET bc.ID_DIA = 5 where hb.ID_DIA = 5;

/*Prueba de consulta para colocar tiempos designados */
/*Turno maturino*/
UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID SET bc.HORA_INICIO = '7:00',
bc.HORA_FIN = '7:45'WHERE b.ID = 1;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '7:45', bc.HORA_FIN = '8:30'WHERE b.ID = 2;


UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '8:30', bc.HORA_FIN = '9:15'WHERE b.ID = 3;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '9:15', bc.HORA_FIN = '10:00'WHERE b.ID = 4;


UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '10:30', bc.HORA_FIN = '11:15'WHERE b.ID = 5;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '11:15', bc.HORA_FIN = '12:00'WHERE b.ID = 6;

/*Turno vespertino*/

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '12:30', bc.HORA_FIN = '1:15'WHERE b.ID = 7;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '1:15', bc.HORA_FIN = '2:00'WHERE b.ID = 8;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '2:00', bc.HORA_FIN = '2:45'WHERE b.ID = 9;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '2:45', bc.HORA_FIN = '3:30'WHERE b.ID = 10;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '3:45', bc.HORA_FIN = '4:30'WHERE b.ID = 11;

UPDATE bloque_clase bc inner join horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID  inner join bloque b on hb.ID_BLOQUE = b.ID 
SET bc.HORA_INICIO = '4:30', bc.HORA_FIN = '5:15'WHERE b.ID = 12;

select * from dia;
select * from bloque_clase;



 alter table bloque_clase ADD CONSTRAINT FK_Dia_bloque FOREIGN KEY (ID_DIA) REFERENCES dia (ID);

