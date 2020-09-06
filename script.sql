/* TABLE creation script */
create table movies
(
id integer primary key,
name nvarchar(50) 
);
create  table survey(
participant varchar(25),
age_grp char(5),
gender char(1),
movie_id integer,
index movie_ind (movie_id),
    foreign key (movie_id)
        references movies(id)
        on delete cascade,
rating integer
);

/* LOADING of data from survey CSV into MySql db */
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies.csv' 
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/moviesurvey.csv' 
INTO TABLE survey
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

