create view Vw_Bloque_Info
as
SELECT bc.ID as ID_BLOQUE_CLASE,bc.ID_GRUPO ,m.ID AS ID_MODALIDAD,m.DESCRIPCION AS MODALIDAD,gg.ID as ID_GRADO,gg.DESCRIPCION as GRADO,s.ID as ID_SECCION,
s.DESCRIPCION as SECCION ,hb.ID_TURNO,t.DESCRIPCION AS TURNO,hb.ID_DIA, d.DESCRIPCION AS DIA,hb.ID_HORARIO_DESIGNADO AS ID_BLOQUE,b.DESCRIPCION AS NO_BLOQUE, 
b.HORARIO AS HORARIO_BLOQUE ,a.ID AS CODIGO_ASIGNATURA, a.DESCRIPCION as ASIGNATURA , p.CEDULA as CEDULA_DOCENTE, concat(p.PRIMER_NOMBRE," ", p.PRIMER_APELLIDO) AS DOCENTE 
FROM BLOQUE_CLASE bc 					INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN bloque b on hb.ID_HORARIO_DESIGNADO = b.ID
                                        INNER JOIN turno t on hb.ID_TURNO = t.ID 
                                        INNER JOIN dia d on hb.ID_DIA = d.ID 
                                        INNER JOIN grupo g on bc.ID_GRUPO = g.ID 
										INNER JOIN modalidad m on g.ID_MODALIDAD = m.ID		
										INNER JOIN grado gg on g.ID_GRADO = gg.ID	
										INNER JOIN seccion s on g.ID_SECCION = s.ID	
										INNER JOIN personal p on g.CEDULA_DOCENTE = p.CEDULA order by hb.id /*Se ordena por el id del bloque de clase*/ 
                                        
