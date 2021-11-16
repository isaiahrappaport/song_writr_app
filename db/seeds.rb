# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Isaiah", email: "isaiah@example.com", password: "password", username: "isaiah", profile_picture: "https://res.cloudinary.com/dhoyau4sw/image/upload/v1605234402/qy2jxgrqizdwelmbihka.png")
User.create!(name: "Emmi", email: "emmi@example.com", password: "password", username: "emmi", profile_picture: "https://res.cloudinary.com/dhoyau4sw/image/upload/v1605663393/emmi-capston_qp96ko.jpg")
User.create!(name: "Nugs", email: "nugs@example.com", password: "password", username: "nugs", profile_picture: "https://res.cloudinary.com/dhoyau4sw/image/upload/v1605663545/nugs_-_capstone_diymef.jpg")

Song.create!(title: "Wake Up (Demo)", audio_file: "https://res.cloudinary.com/dhoyau4sw/video/upload/v1605663883/Capstone_3_hdb7wn.m4a", lyrics: "Where is your head at now, don't you go looking out for me, don't you see. Try not to be aware, of all the things that make you scared, you'll see, it's meant for me.", privacy: "private", user_id: 2)
Song.create!(title: "Finally Here", audio_file: "https://res.cloudinary.com/dhoyau4sw/video/upload/v1605663832/Capstone_4_gp0d6w.m4a", lyrics: "We're finally here, exactly where we're supposed to be. So don't worry about where you were or will be, cause we're finally here.", privacy: "private", user_id: 2)
Song.create!(title: "Classical Fantasy", audio_file: "https://res.cloudinary.com/dhoyau4sw/video/upload/v1605663916/Capstone_2_mzbtqz.m4a", lyrics: "Instrumental", privacy: "private", user_id: 3)
Song.create!(title: "Hold On", audio_file: "https://res.cloudinary.com/dhoyau4sw/video/upload/v1605663952/Capstone_1_dwc5ur.m4a", lyrics: "This is a song, this is the only song, that you need to hear why don't you sing along. If it does take a while, why don't you stay a while.", privacy: "private", user_id: 3)

Tip.create!(title: "1-a-day", content: "try something new everyday. If one idea works out of 365, that's a success.")
Tip.create!(title: "Major2Minor", content: "Just to switch things up, try switching one of your chords to a major or a minor. See where it takes you.")

Suggestion.create!(user_id: 1, text: "Maybe try Am", agree: 0, song_id: 4)
Suggestion.create!(user_id: 2, text: "I think Am to F instead would be better", agree: 0, song_id: 1)
Suggestion.create!(user_id: 3, text: "Try this slower", agree: 0, song_id: 2)
Suggestion.create!(user_id: 1, text: "Finger pick!", agree: 0, song_id: 3)
