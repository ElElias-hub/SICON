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

DELETE FROM Usuario WHERE UserName='ElElias';