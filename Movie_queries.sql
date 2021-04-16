use prac;

select mov_title, mov_year
from movie;

select mov_year
from movie
where mov_title = 'American Beauty';

select mov_title
from movie
where mov_year = '1999';

select mov_title
from movie
where mov_year < '1998';

select mov_title
from movie
where mov_year = '1999';

select reviewer.rev_name, movie.mov_title
from reviewer, movie;

select rev_name
from reviewer
where rev_id in (
select rev_id
from rating
where rev_stars >= 7);

select mov_title
from movie
where mov_id in (
select mov_id 
from rating
where num_o_ratings is Null);

select rev_name
from reviewer
where rev_id in(
select rev_id
from rating
where rev_stars is null);

select dir_fname, dir_lname
from director
where dir_id in (
	select dir_id 
	from movie_direction
    where mov_id in (
		select mov_id
        from movie
        where mov_title = 'Eyes Wide Shut'));
        
