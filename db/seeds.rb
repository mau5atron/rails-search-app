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
	"Horse The Band", 
	"Steve Miller Band",
	"DragonForce",
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
	{name:"Lemonade", artist_id: Artist.find_by(name: "Beyonce").id},
	{name:"I AM... Sasha Fierce", artist_id: Artist.find_by(name: "Beyonce").id},
	{name:"Dangerously In Love", artist_id: Artist.find_by(name: "Beyonce").id},
	{name:"4:44", artist_id: Artist.find_by(name: "Jay-Z").id},
	{name:"Watch The Throne", artist_id: Artist.find_by(name: "Jay-Z").id},
	{name:"Magna Carta Holy Grail", artist_id: Artist.find_by(name: "Jay-Z").id},
	{name:"The 20/20 Experience", artist_id: Artist.find_by(name: "Justin Timberlake").id},
	{name:"Recrimination", artist_id: Artist.find_by(name: "Justin Timberlake").id},
	{name:"Justified", artist_id: Artist.find_by(name: "Justin Timberlake").id},
	{name:"Desperate Living", artist_id: Artist.find_by(name: "Horse The Band").id},
	{name:"A Natural Death", artist_id: Artist.find_by(name: "Horse The Band").id},
	{name:"Pizza", artist_id: Artist.find_by(name: "Horse The Band").id},
	{name:"Fly Like An Eagle", artist_id: Artist.find_by(name: "Steve Miller Band").id},
	{name:"The Joker", artist_id: Artist.find_by(name: "Steve Miller Band").id},
	{name:"Brave New World", artist_id: Artist.find_by(name: "Steve Miller Band").id},
	{name:"Valley Of The Damned", artist_id: Artist.find_by(name: "DragonForce").id},
	{name:"Sonic Firestorm", artist_id: Artist.find_by(name: "DragonForce").id},
	{name:"Inhuman Rampage", artist_id: Artist.find_by(name: "DragonForce").id},
	{name:"Purpose", artist_id: Artist.find_by(name: "Justin Bieber").id},
	{name:"Journals", artist_id: Artist.find_by(name: "Justin Bieber").id},
	{name:"Kaleidoscope", artist_id: Artist.find_by(name: "Tiesto").id},
	{name:"Club Life: Volume Four New York City", artist_id: Artist.find_by(name: "Tiesto").id},
	{name:"Elements Of Life", artist_id: Artist.find_by(name: "Tiesto").id},
	{name:"Aggressive", artist_id: Artist.find_by(name: "Beartooth").id},
	{name:"Disgusting", artist_id: Artist.find_by(name: "Beartooth").id},
	{name:"Sick", artist_id: Artist.find_by(name: "Beartooth").id},
	{name:"Power Metal", artist_id: Artist.find_by(name: "Pantera").id},
	{name:"Metal Magic", artist_id: Artist.find_by(name: "Pantera").id},
	{name:"Far Beyond Driven", artist_id: Artist.find_by(name: "Pantera").id}
]

albums.each do |x|
	Album.create(name: x[:name], artist_id: x[:artist_id])
end