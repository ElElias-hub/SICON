use SICONDB


CREATE Procedure UpdateUser
@Nombre varchar(20),
@Password varchar(20),
@Apellidos varchar(30),
@Tipo int,
@usu varchar(50)
	as
	Begin

		declare @Name varchar(50)
		declare @Ape varchar(50)
		select @Ape=Apellidos from Usuario 
		where TypeUser=@Tipo and Nombre=@usu;

		select @Name=UserName from Usuario
		where TypeUser=@Tipo and Nombre=@usu and Apellidos=@Ape;

UPDATE Usuario
   SET [PassWord] = @Password
      ,[Nombre] = @Nombre
      ,[Apellidos] = @Apellidos
WHERE UserName=@Name;

	END
Go

exec UpdateUser @Nombre='Elias' ,@Password=12345 ,@Apellidos='Corona Maldonado',@Tipo=2,@usu='Elias Fernando'; 

Select * from usuario



CREATE Procedure UpdateUserAdm
@Name varchar(20),
@Nombre varchar(20),
@Password varchar(20),
@Apellidos varchar(30),
@Tipo int
	as
	Begin

UPDATE Usuario
   SET [PassWord] = @Password
      ,[Nombre] = @Nombre
      ,[Apellidos] = @Apellidos
	  ,[TypeUser] = @Tipo
WHERE UserName=@Name;

	END
Go

Create view SelectMateriales as
	(Select M.IdMaterial as Folio, M.Nombre_Mat as Material, C.Categoria, P.NombreP as Proveedor
	From Material M inner join Categoria C
	on M.Categoria=C.IdCategoria
	inner join Proveedor P
	on M.Proveedor=P.idProveedor
	);
Go

select * from SelectMateriales


CREATE Procedure DeleteMaterial
@IdMaterial varchar(20)
	as
	Begin

	DELETE FROM Material WHERE IdMaterial=@IdMaterial;

	END
Go

exec  DeleteMaterial @IdMaterial=;


