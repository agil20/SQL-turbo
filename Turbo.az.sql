Use TURBO
Select * From Models
Select * From Elan
Select E.Name, Models.Name From  Elan E
inner join Models on Models.Id=E.ModelId
Select E.Name, Detals.kredit From  Elan E
inner join Detals on Detals.Id=E.ModelId
Select E.Name, Users.Name From  Elan E
inner join Users on Users.Id=E.ModelId
Select E.Name, Photos.Photo From  Elan E
inner join Photos on Photos.Id=E.ModelId
Select E.Name, Detals.kredit From  Elan E
inner join Detals on Detals.Id=E.ModelId