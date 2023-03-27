delimiter //
create procedure SP_Buscar_Grupo
(
	_ID_GRADO INT,
    _ID_SECCION INT,
    _ID_TURNO INT,
    _ID_MODALIDAD INT,
    _CEDULA CHAR(18)
)
select g.ID  AS CODIGO, m.DESCRIPCION AS MODALIDAD,  GG.DESCRIPCION AS GRADO, S.DESCRIPCION AS SECCION, T.DESCRIPCION AS TURNO,
 concat(p.PRIMER_NOMBRE,' ', p.SEGUNDO_NOMBRE,' ', p.PRIMER_APELLIDO,' ',p.SEGUNDO_APELLIDO) as  'DOCENTE GUIA'
 from grupo g inner join grado gg on g.ID_GRADO = gg.ID
								 inner join seccion s on g.ID_SECCION = s.ID
                                 inner join turno t on g.ID_TURNO = t.ID
                                 inner join modalidad m on g.ID_MODALIDAD = m.ID
                                 inner join personal p on g.CEDULA_DOCENTE = p.CEDULA

where ID_GRADO = _ID_GRADO 
	AND ID_SECCION = _ID_SECCION AND ID_TURNO=_ID_TURNO AND ID_MODALIDAD=_ID_MODALIDAD and CEDULA_DOCENTE =_CEDULA;
    
    
// delimiter ;


SELECT * FROM GRUPO;
select * from turno;
select * from grado;
SELECT * FROM modalidad;
call SP_Buscar_Grupo(4,1,1,4,'001-070985-0032X')