# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Isaiah", email: "isaiah@example.com", password: "password", username: "isaiahtest", profile_picture: "isaiah.jpg")
User.create!(name: "Emmi", email: "emmi@example.com", password: "password", username: "emmitest", profile_picture: "emmi.jpg")
User.create!(name: "Nugs", email: "nugs@example.com", password: "password", username: "nugstest", profile_picture: "nugs.jpg")

Song.create!(title: "untitled1", audio_file: "untitled1.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 1)
Song.create!(title: "untitled2", audio_file: "untitled2.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 1)
Song.create!(title: "untitled3", audio_file: "untitled3.mp3", lyrics: "sjdnfjkdsf", privacy: "public", user_id: 1)
Song.create!(title: "untitled1", audio_file: "untitled1.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 2)
Song.create!(title: "untitled2", audio_file: "untitled2.mp3", lyrics: "sjdnfjkdsf", privacy: "public", user_id: 2)
Song.create!(title: "untitled1", audio_file: "untitled1.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 3)
Song.create!(title: "untitled2", audio_file: "untitled2.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 3)

Tip.create!(title: "1-a-day", content: "try something new everyday. If one idea works out of 365, that's a success.")
Tip.create!(title: "Major2Minor", content: "Just to switch things up, try switching one of your chords to a major or a minor. See where it takes you.")

Suggestion.create!(user_id: 1, text: "Maybe try Am", agree: 0, song_id: 4)
Suggestion.create!(user_id: 2, text: "I think Am to F instead would be better", agree: 0, song_id: 1)
Suggestion.create!(user_id: 3, text: "Try this slower", agree: 0, song_id: 2)
Suggestion.create!(user_id: 1, text: "Finger pick!", agree: 0, song_id: 6)
