create proc add_complaint

@id int , 
@title varchar(50),
@department int,
@description varchar(255),
@address varchar(255),
@city varchar(50),
@pincode int,
@photo varchar(255)

AS
if @id=0
begin
insert into complaints(title , department , description , address , city , pincode , photo)
values(@title , @department , @description , @address , @city , @pincode , @photo)
end

