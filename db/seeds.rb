

5.times do
  User.create(
      email: Faker::Internet.email,
      hashed_password: "password"
    )
end

users = User.all

12.times do
  question = Question.create(
    title: Faker::Hacker.noun,
    body_text: Faker::Hacker.say_something_smart,
    user_id: users.sample.id,
    img_path: ""
    )
  question.votes.create(user_id: users.sample.id, value: [-1,1].sample)
  3.times do
    question.comments.create(user_id: users.sample.id, text: Faker::Lorem.sentence)
  end
end

questions = Question.all

10.times do
  answer = Answer.create(
    text: Faker::Hacker.say_something_smart,
    user_id: users.sample.id,
    question_id: questions.sample.id
    )
  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)
  3.times do
    answer.comments.create(user_id: users.sample.id, text: Faker::Lorem.sentence)
  end
end


