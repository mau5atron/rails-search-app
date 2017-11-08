# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
names = [
	"Alan Jackson", 
	"Gap Band", 
	"Deadmau5",
	"Britney Spears", 
	"Beyonce",
	"Jay-Z",
	"Justin Timberlake",
	"Horse the Band", 
	"Steve Miller Band",
	"Dragonforce",
	"Justin Bieber", 
	"Tiesto",
	"Beartooth",
	"Pantera"
]

names.each do |band|
	Artist.create(name: band)
end