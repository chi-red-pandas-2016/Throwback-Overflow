User.create(
  email: 'root@',
  hashed_password: "root")

User.create(
  email: 'will.smith@90.com',
  hashed_password: "password")

User.create(
  email: 'jennifer.aniston@90.com',
  hashed_password: "password")

User.create(
  email: 'ronald.reagan@80.com',
  hashed_password: "password")

User.create(
  email: 'princess.diana@80.com',
  hashed_password: "password")

User.create(
  email: 'muhammad.ali@70.com',
  hashed_password: "password")

User.create(
  email: 'cher@70.com',
  hashed_password: "password")

User.create(
  email: 'john.lennon@60.com',
  hashed_password: "password")

User.create(
  email: 'elizabeth.taylor@60.com',
  hashed_password: "password")

User.create(
  email: 'elvis.presley@50.com',
  hashed_password: "password")

User.create(
  email: 'marilyn.monroe@50.com',
  hashed_password: "password")


users = User.all


question = Question.create(
  title: "Which 1900's decade was the BEST 90's, 80's, 70's, 60's?!!?!",
  body_text: "I think the 90's was the best because it just totally was!",
  user_id: 2,
  img_path: "https://pbs.twimg.com/profile_images/508349190372478976/4p6IuWR6.png"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Where do I find DUNKAROOS?!",
  body_text: "I think the 90's was the best because it just totally was!",
  user_id: 6,
  img_path: "http://vignette4.wikia.nocookie.net/the-foods-we-loved/images/1/1a/100.jpg/revision/latest?cb=20130821212831"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "What time should I stop feeding my Gremlin?",
  body_text: "My stupid furby turns into a gremlin if I feed him too late. PLEASE HELP!",
  user_id: 4,
  img_path: "http://nme.assets.ipccdn.co.uk/images/2015Gremlins_GettyImages-163067748261115.article_x4.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

questions = Question.all

answer = Answer.create(
    text: Faker::Hacker.say_something_smart,
    user_id: users.sample.id,
    question_id: questions.sample.id
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)

  answer.comments.create(user_id: users.sample.id, text: Faker::Lorem.sentence)