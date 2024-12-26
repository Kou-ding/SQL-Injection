-- Query 1
select songname
from totallyCalmingMusic
where songname = "RedHat"
union
select spoilers
from animeMovieCharacters
where id = 4
union
select algo
from superUnsuspiciousTable
where pkey = "Greek Athlete"
union 
select songname
from totallyCalmingMusic
where songartist = "Radiohead";

-- Query 2
insert into 
    totallyCalmingMusic 
values (
    "13",
    "10371", 
    "Papadakis Konstantinos Fotios", 
    "db61f4a861a596423536d41b7136afea91dbd0d41caf594396ffa61172993543"
);