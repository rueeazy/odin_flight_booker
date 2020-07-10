# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Airport.reset_pk_sequence
airports = Airport.create([{ airport_code: 'SFO' }, { airport_code: 'NYC' }, { airport_code: 'LAX' }, 
{ airport_code: 'LAS' }, { airport_code: 'DEN' }, { airport_code: 'SEA' }, {airport_code: 'PHX' }])

Flight.delete_all
Flight.reset_pk_sequence
flights = Flight.create([{ start_airport_id: 1, end_airport_id: 2, departure_time: DateTime.new(2020, 8, 29, 16, 30, 0), flight_duration: 5 }, 
{ start_airport_id: 1, end_airport_id: 3, departure_time: DateTime.new(2020, 7, 13, 13, 0, 0), flight_duration: 2 }, 
{ start_airport_id: 1, end_airport_id: 4, departure_time: DateTime.new(2020, 9, 7, 9, 30, 0), flight_duration: 2 }, 
{ start_airport_id: 2, end_airport_id: 7, departure_time: DateTime.new(2020, 10, 6, 10, 0, 0), flight_duration: 5 }, 
{ start_airport_id: 1, end_airport_id: 2, departure_time: DateTime.new(2020, 12, 4, 6, 30, 0), flight_duration: 6 }, 
{ start_airport_id: 3, end_airport_id: 2, departure_time: DateTime.new(2020, 11, 4, 11, 0, 0), flight_duration: 6 }])