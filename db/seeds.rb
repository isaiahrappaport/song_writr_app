# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: "Isaiah", email_address: "test@example.com", password_digest: "password", username: "usertest", profile_picture: "test.jpg")

song = Song.create(title: "untitled1", audio_file: "untitled1.mp3", lyrics: "sjdnfjkdsf", privacy: "private", user_id: 1)

tip = Tip.create(title: "1-a-day", content: "try something new everyday. If one idea works out of 365, that's a success.")

suggestion = Suggestion.create(user_id: 1, text: "Maybe try Am", agree: 0, song_id: 1)
