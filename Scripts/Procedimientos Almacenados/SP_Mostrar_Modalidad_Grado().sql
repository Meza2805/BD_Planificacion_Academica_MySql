select * from grado;
select * from modalidad;
select * from modalidad_grado;

select mg.ID,  m.DESCRIPCION ,g.DESCRIPCION from modalidad_grado mg inner join grado g on mg.ID_GRADO = g.ID
								 inner join modalidad m on mg.ID_MODALIDAD =  m.ID order by m.DESCRIPCION ;
delimiter //
	create procedure SP_Mostrar_Modalidad_Grado()
    begin
		select mg.ID,  m.DESCRIPCION as MODALIDAD ,g.DESCRIPCION  AS GRADO from modalidad_grado mg inner join grado g on mg.ID_GRADO = g.ID
								 inner join modalidad m on mg.ID_MODALIDAD =  m.ID order by m.DESCRIPCION ;
    end
// delimiter ;