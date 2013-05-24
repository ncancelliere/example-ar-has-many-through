# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Actors
actors = [
    {name: 'Robert Downey Jr.', gender: 'Male', date_of_birth: '1965-04-04' },
    {name: 'Chris Evans', gender: 'Male', date_of_birth: '1981-07-13'},
    {name: 'Mark Ruffalo', gender: 'Male', date_of_birth: '1967-11-22'},
    {name: 'Chris Hemsworth', gender: 'Male', date_of_birth: '1983-08-11'},
    {name: 'Scarlett Johansson', gender: 'Female', date_of_birth: '1984-11-22'},
    {name: 'Jeremy Renner', gender: 'Male', date_of_birth: '1971-01-07'},
    {name: 'Tom Hiddleston', gender: 'Male', date_of_birth: '1981-02-09'}
]
actors.each{ |x| Actor.create(x) }

# Movies
movies = [
    {title: 'Avengers Assemble', rated: 'PG-13', runtime: 143, release_date: '2012-04-04',
     summary: "Nick Fury of S.H.I.E.L.D. brings together a team of super humans to form
               The Avengers to help save the Earth from Loki and his army." },
    {title: 'Thor', rated: 'PG-13', runtime: 115, release_date: '2011-05-06',
     summary: "The powerful but arrogant warrior Thor is cast out of the fantastic realm of Asgard
               and sent to live amongst humans on Earth, where he soon becomes one of their finest defenders." },
    {title: 'Iron Man', rated: 'PG-13', runtime: 126, release_date: '2008-04-02',
     summary: "When wealthy industrialist Tony Stark is forced to build an armored suit after a
               life-threatening incident, he ultimately decides to use its technology to fight against evil."}
]
movies.each{ |x| Movie.create(x) }