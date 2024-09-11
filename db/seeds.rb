# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988', :description => 'Movie Description'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018', :description => 'Movie Description'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019', :description => 'Movie Description'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021', :description => 'Movie Description'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021', :description => 'Movie Description'},
  {:title => 'Deadpool & Wolverine', :rating => 'R',
    :release_date => '26-July-2024', :description => 'Marvel Entertainment'},
  {:title => 'Stree 2', :rating => 'A',
    :release_date => '15-Aug-2024', :description => 'Movie Description'},
  {:title => 'Fighter', :rating => 'NR',
    :release_date => '26-May-2024', :description => '2 people fight'},
  {:title => 'Maidaan', :rating => 'R',
    :release_date => '10-Mar-2024', :description => 'A movie on Football'} 
]

more_movies.each do |movie|
  Movie.create!(movie)
end