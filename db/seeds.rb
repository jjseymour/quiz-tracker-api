# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  quiz = Quiz.create(title: Faker::GameOfThrones.house, description: Faker::GameOfThrones.character, difficulty: Faker::Number.digit)

  10.times do
    Question.create(content: Faker::StarWars.quote, quiz_id: quiz.id)
  end

end
