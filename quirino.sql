create table Alumno(
    boleta int (10) primary key, /*Llave primaria*/
    especialidad int (2), /*Llave foraea de cat_especialidad*/
    nombre varchar (20),
    ap_pat varchar (20),
    ap_mat varchar (20)
);

create table Cat_Especialidad(
    id_especialidad int (2),
    especialidad varchar (10), /*primaria*/
    plan_est int (4),
    area varchar
);

alter table Alumno
    ADD CONSTRAINT 


create table Inscripcion{
    boleta int (10)
}