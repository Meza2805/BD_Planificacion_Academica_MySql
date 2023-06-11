delimiter //
create procedure SP_Insertar_Bloque_Horario
(
	DocenteLunes varchar(18),
    DocenteMartes varchar(18),
	DocenteMiercoles varchar(18),
	DocenteJueves varchar(18),
    DocenteViernes varchar(18),
	AsignaturaLunes int ,
	AsignaturaMartes int ,
    AsignaturaMiercoles int ,
    AsignaturaJueves int ,
    AsignaturaViernes int ,
    CodigoGrupo int,
    h01 varchar(20),
    h02 varchar(20)
)
begin
	declare CodigoBloque int ;
    set CodigoBloque = (select No_Bloque from horario_designado where TimeBegin = RTRIM(LTRIM(h01)) and TimeEnd = RTRIM(LTRIM(h02)) );
    
	update horario_designado set CEDULA_DOCENTE = DocenteLunes, ID_ASIGNATURA = AsignaturaLunes where ID_DIA = 1 and ID_BLOQUE = CodigoBloque and ID_GRUPO = CodigoGrupo;
    update personal set HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA = DocenteLunes;
    
    update horario_designado set CEDULA_DOCENTE = DocenteLunes, ID_ASIGNATURA = AsignaturaLunes where ID_DIA = 2 and ID_BLOQUE = CodigoBloque and ID_GRUPO = CodigoGrupo;
	update personal set HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA = DocenteMartes;
    
    update horario_designado set CEDULA_DOCENTE = DocenteLunes, ID_ASIGNATURA = AsignaturaLunes where ID_DIA = 3 and ID_BLOQUE = CodigoBloque and ID_GRUPO = CodigoGrupo;
	update personal set HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA = DocenteMiercoles;
      
    update horario_designado set CEDULA_DOCENTE = DocenteLunes, ID_ASIGNATURA = AsignaturaLunes where ID_DIA = 4 and ID_BLOQUE = CodigoBloque and ID_GRUPO = CodigoGrupo;
	update personal set HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA = DocenteJueves;
    
    update horario_designado set CEDULA_DOCENTE = DocenteLunes, ID_ASIGNATURA = AsignaturaLunes where ID_DIA = 5 and ID_BLOQUE = CodigoBloque and ID_GRUPO = CodigoGrupo;
	update personal set HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA = DocenteViernes;
end//
delimiter ;

select * from horario_designado;
select * from bloque_clase;
select * from personal;


