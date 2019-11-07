#Step:1
#Creation of Table in Hive and Loading of data:

create table olympic (athelete STRING,age INT,country STRING,year STRING,closing STRING,sport STRING,gold INT,silver INT,bronze INT,total INT) row format delimited fields terminated by ‘\t’ stored as textfile;


load data local inpath ‘/home/acadgild/Downloads/olympic_data.csv’ into table olympic;


select country,SUM(total) from olympic where sport = “Swimming” GROUP BY country;


select year,SUM(total) from olympic where country = “India” GROUP BY year;


select country,SUM(total) from olympic GROUP BY country;


select country,SUM(gold) from olympic GROUP BY country;
