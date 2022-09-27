CREATE VIEW Vw_Grupos_Registrados as
select  p.CEDULA, concat(p.PRIMER_NOMBRE  ,' ', p.PRIMER_APELLIDO) as "DOCENTE GUIA"  ,g.ID as "ID GRUPO",gp.DESCRIPCION as GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO, m.DESCRIPCION AS MODALIDAD, year( g.ANIO_ESCOLAR) AS  "AÑO ELECTIVO" 
		 from grupo g inner join grado gp on g.ID_GRADO = gp.ID
					  inner join turno t on  g.ID_TURNO = t.ID
                      inner join modalidad m on g.ID_MODALIDAD = m.ID
                      inner join personal p on g.CEDULA_DOCENTE = p.CEDULA
                      inner join seccion s on g.ID_SECCION = s.ID  order by gp.ID ,t.ID;

