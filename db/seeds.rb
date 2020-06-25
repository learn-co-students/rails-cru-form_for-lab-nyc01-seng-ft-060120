# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Genre.delete_all
Song.delete_all
puts "...deleting existing data"

puts "...creating artists"
drake = Artist.create(name: "Drake", bio: "Drake's bio")
adele = Artist.create(name: "Adele", bio: "Adele's bio")
rianna = Artist.create(name: "Rianna", bio: "Rianna's bio")
john_mayer = Artist.create(name: "John Mayer", bio: "John Mayer's bio")
justin_bieber = Artist.create(name: "Justin Bieber", bio: "Justin Bieber's bio")

puts "...creating genres"
pop = Genre.create(name: "Pop")
rap = Genre.create(name: "Rap")
rock = Genre.create(name: "Rock")

puts "...creating songs"
who_cares = Song.create(name: "Who Cares", artist_id: drake.id , genre_id: rap.id )
idk = Song.create(name: "idk", artist_id: adele.id , genre_id: pop.id)
shrug = Song.create(name: "shrug", artist_id: rianna.id , genre_id: rock.id )



puts "Your database has been seeded! 🌮"