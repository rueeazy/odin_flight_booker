# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
airports = Airport.create([{ airport_code: 'SFO' }, { airport_code: 'NYC' }, { airport_code: 'LAX' }, 
{ airport_code: 'LAS' }, { airport_code: 'DEN' }, { airport_code: 'SEA' }, {airport_code: 'PHX' }])
