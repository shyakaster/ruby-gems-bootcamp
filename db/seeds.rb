
#User.create!(email:'shyakaster@gmail.com',password:'beatrice@60',password_confirmation:'beatrice@60')

30.times do
  Course.create([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
    }])
end
