# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
    # username, email, password and gender
    User.create(
        username: Faker::Name.name, 
        email: Faker::Internet.free_email,
        password: "12345678",
        gender: Faker::Gender.binary_type
    )
end

100.times do
    Task.create(
        task_name: Faker::Lorem.sentence(word_count: 5),
        task_description: Faker::Lorem.paragraph(sentence_count: 5),
        task_status: %w[Complete Incomplete].sample,
        user_id: rand(1..10)
    )
end