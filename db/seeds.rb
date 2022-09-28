puts "🌱 Seeding spices..."

url = 'https://v2.jokeapi.dev/joke/Any?safe-mode'
20.times do 
    response = RestClient.get(url) 
    r = JSON(response)
    Joke.create(
        body:r['joke'], category:r['category']
    )
    User.create(
        username:Faker::FunnyName.name 
    )
    Review.create(
        content:Faker::Lorem.paragraph(sentence_count: 2),
        user_id:User.all[rand(User.count)].id,
        joke_id:Joke.all[rand(Joke.count)].id,
    )
end
puts "✅ Done seeding!"
