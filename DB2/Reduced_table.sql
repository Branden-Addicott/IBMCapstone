create table Coursera.Accident_Reduced(severity int, start_date date, start_day int, start_hour int, Temperature real, visibility real, wind_speed real, Precipitation real)

insert into Coursera.Accident_Reduced(Severity, Start_date, Start_day, Start_hour, Temperature, Visibility, Wind_Speed, Precipitation)
(select Severity, 
        date(start_Time) as Start_date,
        day(start_time) as start_day,
        hour(start_time) as start_hour),
        Temperature,
        Visibility,
        Wind_speed,
        Precipitation
from Coursera.Accident
where ucase(state) in('SC')

