# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

Christopher_Nolan = Person.new
Christopher_Nolan.name = "Christopher Nolan"
Christopher_Nolan.save

Christian_Bale = Person.new
Christian_Bale.name = "Christian Bale"
Christian_Bale.save 

Michael_Caine = Person.new
Michael_Caine.name = "Michael Caine"
Michael_Caine.save 

Liam_Neeson = Person.new
Liam_Neeson.name = "Liam Neeson"
Liam_Neeson.save 

Katie_Holmes = Person.new
Katie_Holmes.name = "Katie Holmes"
Katie_Holmes.save 

Gary_Oldman = Person.new
Gary_Oldman.name = "Gary Oldman"
Gary_Oldman.save 

Health_Ledger = Person.new
Health_Ledger.name = "Heath Ledger"
Health_Ledger.save 

Aaron_Eckhart = Person.new
Aaron_Eckhart.name = "Aaron Eckhart"
Aaron_Eckhart.save 

Maggie_Gyllenhaal = Person.new
Maggie_Gyllenhaal.name = "Maggie Gyllenhaal"
Maggie_Gyllenhaal.save 

Tom_Hardy = Person.new
Tom_Hardy.name = "Tom Hardy"
Tom_Hardy.save 

Joseph_Gordon = Person.new
Joseph_Gordon.name = "Joseph Gordon-Levitt"
Joseph_Gordon.save 

Anne_Hathaway = Person.new
Anne_Hathaway.name = "Anne Hathaway"
Anne_Hathaway.save 

batman1 = Movie.new
batman1.title = "Batman Begins"
batman1.year = 2005
batman1.rating = "PG-13"
batman1.person_id = Person.where({name: "Christopher Nolan"})[0]
batman1.save

batman2 = Movie.new
batman2.title = "The Dark Knight"
batman2.year = 2008
batman2.rating = "PG-13"
batman2.person_id = Person.where({name: "Christopher Nolan"})[0]
batman2.save

batman3 = Movie.new
batman3.title = "The Dark Knight Rises"
batman3.year = 2012
batman3.rating = "PG-13"
batman3.person_id = Person.where({name: "Christopher Nolan"})[0]
batman3.save

Batman = Role.new
Batman.movie_id = Movie.where({title: "Batman Begins"})[0]
Batman.person_id = Person.where({name: "Christian Bale"})[0]
Batman.character_name = "Bruce Wayne"
Batman.save

Alfred = Role.new
Alfred.movie_id = Movie.where({title: "Batman Begins"})[0]
Alfred.person_id = Person.where({name: "Michael Caine"})[0]
Alfred.character_name = "Alfred"
Alfred.save

RAG = Role.new
RAG.movie_id = Movie.where({title: "Batman Begins"})[0]
RAG.person_id = Person.where({name: "Liam Neeson"})[0]
RAG.character_name = "Ra's Al Ghul"
RAG.save

Rachel = Role.new
Rachel.movie_id = Movie.where({title: "Batman Begins"})[0]
Rachel.person_id = Person.where({name: "Katie Holmes"})[0]
Rachel.character_name = "Rachel Dawes"
Rachel.save

Commish = Role.new
Commish.movie_id = Movie.where({title: "Batman Begins"})[0]
Commish.person_id = Person.where({name: "Gary Oldman"})[0]
Commish.character_name = "Commissioner Gordon"
Commish.save

Batman2 = Role.new
Batman2.movie_id = Movie.where({title: "The Dark Knight"})[0]
Batman2.person_id = Person.where({name: "Christian Bale"})[0]
Batman2.character_name = "Bruce Wayne"
Batman2.save

Joker = Role.new
Joker.movie_id = Movie.where({title: "The Dark Knight"})[0]
Joker.person_id = Person.where({name: "Heath Ledger"})[0]
Joker.character_name = "Joker"
Joker.save

Harvey = Role.new
Harvey.movie_id = Movie.where({title: "The Dark Knight"})[0]
Harvey.person_id = Person.where({name: "Aaron Eckhart"})[0]
Harvey.character_name = "Harvey Dent"
Harvey.save

Alfred2 = Role.new
Alfred2.movie_id = Movie.where({title: "The Dark Knight"})[0]
Alfred2.person_id = Person.where({name: "Michael Caine"})[0]
Alfred2.character_name = "Alfred"
Alfred2.save

Rachel2 = Role.new
Rachel2.movie_id = Movie.where({title: "The Dark Knight"})[0]
Rachel2.person_id = Person.where({name: "Maggie Gyllenhaal"})[0]
Rachel2.character_name = "Rachel Dawes"
Rachel2.save

Batman3 = Role.new
Batman3.movie_id = Movie.where({title: "The Dark Knight Rises"})[0]
Batman3.person_id = Person.where({name: "Christian Bale"})[0]
Batman3.character_name = "Bruce Wayne"
Batman3.save

Commish2 = Role.new
Commish2.movie_id = Movie.where({title: "The Dark Knight Rises"})[0]
Commish2.person_id = Person.where({name: "Gary Oldman"})[0]
Commish2.character_name = "Commissioner Gordon"
Commish2.save

Bane = Role.new
Bane.movie_id = Movie.where({title: "The Dark Knight Rises"})[0]
Bane.person_id = Person.where({name: "Tom Hardy"})[0]
Bane.character_name = "Bane"
Bane.save

Robin = Role.new
Robin.movie_id = Movie.where({title: "The Dark Knight Rises"})[0]
Robin.person_id = Person.where({name: "Joseph Gordon-Levitt"})[0]
Robin.character_name = "John Blake"
Robin.save

Catwoman = Role.new
Catwoman.movie_id = Movie.where({title: "The Dark Knight Rises"})[0]
Catwoman.person_id = Person.where({name: "Anne Hathaway"})[0]
Catwoman.character_name = "Selina Kyle"
Catwoman.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
