
# 10.times do
#   quiz = Quiz.create(title: Faker::GameOfThrones.house, description: Faker::GameOfThrones.character, difficulty: Faker::Number.digit)
#
#   10.times do
#     Question.create(content: Faker::StarWars.quote, quiz_id: quiz.id)
#   end
#
# end
#
# 10.times do
#   cohort = Cohort.create(flatiron_named: Faker::Beer.name, student_named: Faker::Beer.style, expected_student_number: Faker::Number.between(25, 32), start_date: Faker::Date.backward(100), end_date: Faker::Date.forward(100))
#   user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cohort_id: cohort.id, instructor: true, email: Faker::Internet.email)
#   cohort.instructors << user
#   cohort.save
# end
