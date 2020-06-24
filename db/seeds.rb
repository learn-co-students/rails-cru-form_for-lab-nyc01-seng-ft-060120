# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

drake = Artist.create({:name => "Drake",
  :bio => "Born Aubrey Drake Graham on October 24, 1986, in Toronto,
  Canada, Drake grew up with music in his blood. His father, Dennis Graham,
  was a drummer for the legendary rock 'n' roll star Jerry Lee Lewis. ...
  His father is an African American Catholic and his mother is a white Canadian Jew"})

hiphop = Genre.create({:name => "Hip Hop"})


Song.create({:name => "Hotline Bling", :artist_id => drake.id, :genre_id => hiphop.id})
Song.create({:name => "Tootsie Roll", :artist_id => drake.id, :genre_id => hiphop.id})
Song.create({:name => "God's Plan", :artist_id => drake.id, :genre_id => hiphop.id})
