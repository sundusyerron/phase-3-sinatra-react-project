puts "🌱 Seeding messages..."


10.times do
  title = Faker::Hipster.sentence(word_count: rand(2..4)).chomp('.')
  message = Faker::ChuckNorris.fact
  user_id = rand(1..10) 
  Meme.create(title: title, message: message, user_id: user_id)
end

10.times do
   username = Faker::Name.name
    email = Faker::Internet.email
    sex = Faker::Gender.binary_type.downcase
    User.create(username: username, email: email, sex: sex)
  end
  
  



puts "✅ Done seeding!"