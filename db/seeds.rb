# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |artist|
  Artist.create(
    name: "Artist #{artist}",
    bio: "Bio #{artist}"
  )
end

5.times do |genre|
  Genre.create(
    name: "genre #{genre}",
  )
end

5.times do |song|
  Song.create(
    name: "song #{song}",
    artist_id: Artist.last.id,
    genre_id: Genre.last.id
  )
end