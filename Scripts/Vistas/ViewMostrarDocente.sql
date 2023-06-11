
CREATE VIEW 
ViewMostrarDocente AS 
  select p.CEDULA as cedula ,concat(p.PRIMER_NOMBRE," ",p.SEGUNDO_NOMBRE," ",p.PRIMER_APELLIDO," ",p.SEGUNDO_APELLIDO) as 
    NOMBRE from personal p  left  join  grupo g  on g.CEDULA_DOCENTE = p.CEDULA where     p.ID_CARGO = 1 and  g.CEDULA_DOCENTE  is null 
    or (not exists ( select ID  from grupo where  CEDULA_DOCENTE =cedula and  year(ANIO_ESCOLAR) = year (curdate()) ) )
     order by NOMBRE;
     
     
select * from ViewMostrarDocente where cedula <> '0';
call SP_Mostrar_Personal;