# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 =Artist.create(name: "Amy Winehouse", bio: "My name is Amy.") 
a2 =Artist.create(name: "Britney Spears", bio: "It's britney!")
a3 =Artist.create(name: "Drake", bio: "Sad all the time.")

g3 =Genre.create(name:"Jazz") 
g1 =Genre.create(name:"Pop")
g2 =Genre.create(name:"Rap") 

s1 =Song.create(name:"October Song", artist_id:1, genre_id:1)
s2 =Song.create(name:"Oops I did it again", artist_id:2, genre_id:2)
s3 =Song.create(name:"Hotline Bling", artist_id:3, genre_id:3)