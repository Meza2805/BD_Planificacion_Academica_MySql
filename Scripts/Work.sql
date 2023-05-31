create database planificacion_academica;
use planificacion_academica

select * from bloque_clase;
select * from turno;


create table bloque 
(
	 ID int primary key auto_increment,
     No_Bloque int,
     TimeBegin time,
     TimeEnd time,
     IDModalidad int
)

select * from bloque;

insert into bloque (No_Bloque,TimeBegin,TimeEnd,IDModalidad,IDTurno) values (1,'7:00','7:45',1,1);

select * from bloque_clase;
select * from modalidad;
select * from turno;

select * from horario_designado;

insert into horario_designado (No_Bloque,TimeBegin,TimeEnd,ID_Modalidad,ID_Turno) 
values
	(2,'07:45:00','08:30:00', 4,1),
	(3,'08:30:00','09:15:00', 4,1),
	(4,'09:15:00','10:00:00', 4,1),
	(5,'10:30:00','11:15:00', 4,1),
	(6,'11:15:00','12:00:00', 4,1);
    
    
insert into horario_designado (No_Bloque,TimeBegin,TimeEnd,ID_Modalidad,ID_Turno) 
	values (1,'12:30:00','01:15:00', 4,3),
		(2,'01:15:00','02:00:00', 4,3),
		(3,'02:00:00','02:45:00', 4,3),
		(4,'02:45:00','03:00:00', 4,3),
		(5,'03:45:00','04:30:00', 4,3),
		(6,'04:30:00','05:15:00', 4,3);
        
        
select * from bloque_clase;
delete from bloque_clase;
select * from horario_designado;
SELECT * FROM DIA;
select * from turno;


select d.DESCRIPCION, concat( h.TimeBegin,' - ',h.TimeEnd)as BLOQUE, concat( a.DESCRIPCION ,' // ', concat( p.PRIMER_NOMBRE,' ', p.PRIMER_APELLIDO)) as ASIGNATURA from bloque_clase b 
							inner join horario_designado h on b.ID_BLOQUE = h.ID
							inner join dia d on b.ID_DIA = d.ID
                            inner join asignatura a on a.ID = b.ID_ASIGNATURA
                            inner join personal p on b.CEDULA_DOCENTE = p.CEDULA;
                            
 select count( *) from horario_designado where ID_Modalidad = 4 and ID_Turno = 1;                           
 select   ID  from horario_designado where ID_Modalidad = 4 and ID_Turno = 1 and  No_Bloque = 1;   
 
 
 call SP_HORARIO(108);
 
 call SP_Mostrar_Docentes();
 
 select * from personal;
 select * from grupo;
 
 select CEDULA_DOCENTE from grupo;

 
 
 select p.CEDULA as cedula ,concat(p.PRIMER_NOMBRE," ",p.SEGUNDO_NOMBRE," ",p.PRIMER_APELLIDO," ",p.SEGUNDO_APELLIDO) as 
    NOMBRE from grupo g inner join personal p on g.CEDULA_DOCENTE = p.CEDULA 
    where    year(g.ANIO_ESCOLAR) != year (curdate()) AND (not exists ( select ID  from grupo where  CEDULA_DOCENTE =cedula and  year(ANIO_ESCOLAR) = year (curdate()) ) )
    and ID_CARGO = 1  ;



 select p.CEDULA as cedula ,concat(p.PRIMER_NOMBRE," ",p.SEGUNDO_NOMBRE," ",p.PRIMER_APELLIDO," ",p.SEGUNDO_APELLIDO) as 
    NOMBRE from personal p  left  join  grupo g  on g.CEDULA_DOCENTE = p.CEDULA where  g.CEDULA_DOCENTE  is null 
    
    
or
    (not exists ( select ID  from grupo where  CEDULA_DOCENTE = p.CEDULA  and  year(ANIO_ESCOLAR) = year (curdate()) ) ) 
    and ID_CARGO = 1 ;
    
    
    select * from grupo;
    
 select p.CEDULA as cedula ,concat(p.PRIMER_NOMBRE," ",p.SEGUNDO_NOMBRE," ",p.PRIMER_APELLIDO," ",p.SEGUNDO_APELLIDO) as 
    NOMBRE from personal p  left  join  grupo g  on g.CEDULA_DOCENTE = p.CEDULA where   g.CEDULA_DOCENTE  is null 
    or (not exists ( select ID  from grupo where  CEDULA_DOCENTE =cedula and  year(ANIO_ESCOLAR) = year (curdate()) ) );
    
    
 select p.CEDULA as cedula ,concat(p.PRIMER_NOMBRE," ",p.SEGUNDO_NOMBRE," ",p.PRIMER_APELLIDO," ",p.SEGUNDO_APELLIDO) as 
    NOMBRE, g.ID from grupo g inner join personal p on g.CEDULA_DOCENTE = p.CEDULA 
    where    year(g.ANIO_ESCOLAR) != year (curdate()) AND (not exists ( select ID  from grupo where  CEDULA_DOCENTE =cedula and  year(ANIO_ESCOLAR) = year (curdate()) ) )
		  and  g.CEDULA_DOCENTE  is null
    and ID_CARGO = 1   order by NOMBRE; 
    
    
    call SP_Buscar_Grupo()