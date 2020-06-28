# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all
Genre.destroy_all

10.times do
    Artist.create(name: Faker::Music.band, bio:Faker::Music.chord)
end

10.times do
    Genre.create(name: Faker::Music.genre)
end

10.times do
    Song.create(name: Faker::Music.album, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end