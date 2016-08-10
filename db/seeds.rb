

20.times do
  User.create(
      email: Faker::Internet.email,
      hashed_password: "password"
    )
end

users = User.all

50.times do
  question = Question.create(
    title: Faker::Hacker.noun,
    body_text: Faker::Hacker.say_something_smart,
    user_id: users.sample.id
    )

end

questions = Question.all

100.times do
  Answer.create(
    text: Faker::Hacker.say_something_smart,
    user_id: users.sample.id,
    question_id: questions.sample.id
    )
end


