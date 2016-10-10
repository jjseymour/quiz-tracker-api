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

10.times do
  Cohort.create(flatiron_named: Faker::Beer.name, student_named: Faker::Beer.style, expected_student_number: Faker::Number.between(25, 32), start_date: Faker::Date.backward(100), end_date: Faker::Date.forward(100))
end

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cohort_id: Faker::Number.between(1, 10), instructor: true, email: Faker::Internet.email)
end
