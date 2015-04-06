# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(title: "Furious 7", format: "DVD", length: "90", release_year: "2015", rating: "3")
Movie.create(title: "Woman in Gold", format: "DVD", length: "109", release_year: "2015", rating: "4")

Collection.create(name: "Cool movies")
Collection.create(name: "Love movies")

movie = Movie.find(2)
collection = Collection.find(2)
collection.movies << movie