
#User.create!(email:'shyakaster@gmail.com',password:'beatrice@60',password_confirmation:'beatrice@60')

30.times do
  Course.create([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id,
    short_description: Faker::TvShows::GameOfThrones.quote,
    language: Faker::ProgrammingLanguage.name,
    level: 'Beginner',
    price: Faker::Number.between(from: 1000, to: 20000)
    }])
end
