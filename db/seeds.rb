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

Album.destroy_all
albums = [
	{name:"Thirty Miles West", artist_id: Artist.find_by(name:"Alan Jackson").id},
	{name:"Who I am", artist_id: Artist.find_by(name: "Alan Jackson").id},
	{name:"High Mileage", artist_id: Artist.find_by(name: "Alan Jackson").id},
	{name:"Gap Band IV", artist_id: Artist.find_by(name: "Gap Band").id},
	{name:"The Gap Band III", artist_id: Artist.find_by(name: "Gap Band").id},
	{name:"The Gap Band II", artist_id: Artist.find_by(name: "Gap Band").id},
	{name:"Random Album Title", artist_id: Artist.find_by(name: "Deadmau5").id},
	{name:"For Lack Of A Better Name", artist_id: Artist.find_by(name: "Deadmau5").id},
	{name:"> album title goes here <", artist_id: Artist.find_by(name: "Deadmau5").id},
	{name:"Blackout", artist_id: Artist.find_by(name: "Britney Spears").id},
	{name:"In The Zone", artist_id: Artist.find_by(name: "Britney Spears").id},
	{name:"Oops!... I Did It Again", artist_id: Artist.find_by(name: "Britney Spears").id},
	{name:"", artist_id: Artist.find_by(name: "Beyonce").id},
	{name:"", artist_id: Artist.find_by(name: "Beyonce").id},
	{name:"", artist_id: Artist.find_by(name: "Beyonce").id}
]

albums.each do |x|
	Album.create(name: x[:name], artist_id: x[:artist_id])
end