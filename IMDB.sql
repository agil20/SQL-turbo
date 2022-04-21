use IMDB
Select *from usv_FullMoviess 
where Point>6
Select *from usv_FullMoviess 
where genre  like'%a%' 
Select *from usv_FullMoviess 
where Len(movie)>0 And [movie ] like't%'
SELECT AVG(Point) AS AveragePoint FROM usv_FullMoviess

Select *from usv_FullMoviess
order by Point Desc






