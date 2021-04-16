use prac;

Create Table Actor(
act_id		Integer		Not Null,
act_fname	char(20)	Not Null,
act_lname	char(20)	Not Null,
act_gender	char(1)		Not Null,
CONSTRAINT		Actor_PK	Primary Key(act_id)
);

Create table Movie_cast(
act_id		Integer		Not Null,
mov_id		Integer		Not	Null,
role		char(30)	Not Null,
CONSTRAINT Movie_cast_PK	Primary Key(act_id, mov_id)
);

Create table Director(
dir_id		Integer		Not Null,
dir_fname	char(20)	Not Null,
dir_lname	char(20)	Not Null,
CONSTRAINT		Director_PK		Primary Key(dir_id)
);

Create table Movie_direction(
dir_id		Integer		Not Null,
mov_id		Integer		Not Null
);

Create table Genres(
gen_id		Integer		Not Null,
gen_title	char(20)	Not Null,
CONSTRAINT	Genres_PK	Primary Key(gen_id)
);

Create table Movie_genres(
mov_id		Integer 	Not Null,
gen_id		Integer		Not Null
);

Create table Rating(
mov_id		Integer		Not Null,
rev_id		Integer		Not Null,
rev_stars	Integer		Null,
num_o_ratings	Integer		Null,
CONSTRAINT		Rating_PK	Primary Key(mov_id, rev_id)
);

INSERT INTO Rating VALUES(
	924, 9006, 7.3, null);
INSERT INTO Rating VALUES(
	912, 9011, 8.4,  null);
INSERT INTO Rating VALUES(
	918,9016,  null ,580301);

Create Table Reviewer(
rev_id		Integer		Not Null,
rev_name	char(30)	Not Null,
CONSTRAINT	Reviewer_PK		Primary Key(rev_id)
);

Create Table Movie(
mov_id		Integer		Not Null,
mov_title	char(50)	Null,
mov_year	Integer		Null,
mov_time	Integer		Null,
mov_lang	char(50)	Null,
mov_dt_rel	date	Null,
mov_rel_country		char(5)		Null,
CONSTRAINT		Movie_PK	Primary Key(mov_id)
);