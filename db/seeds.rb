###################### USERS ######################

User.create(
  email: 'demo@',
  password: "password")

User.create(
  email: 'will.smith@90.com',
  password: "password")

User.create(
  email: 'jennifer.aniston@90.com',
  password: "password")

User.create(
  email: 'ronald.reagan@80.com',
  password: "password")

User.create(
  email: 'princess.diana@80.com',
  password: "password")

User.create(
  email: 'muhammad.ali@70.com',
  password: "password")

User.create(
  email: 'cher@70.com',
  password: "password")

User.create(
  email: 'john.lennon@60.com',
  password: "password")

User.create(
  email: 'elizabeth.taylor@60.com',
  password: "password")

User.create(
  email: 'elvis.presley@50.com',
  password: "password")

User.create(
  email: 'marilyn.monroe@50.com',
  password: "password")

users = User.all

############################################################

####################### QUESTIONS ##########################

question = Question.create(
  title: "Which 1900's decade was the BEST?: 70's, 80's, 90's, or some other one?",
  body_text: "I think the 90's was the best because it just totally was! What do y'all think?",
  user_id: 2,
  img_path: "https://lh3.googleusercontent.com/JVQtZTDeV06rO7ChqMIF7thcczCe2m2sB-jjx-w0zlmUXNGdvBWqEfIqxL-x72WB_w=w300"
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
  body_text: "My stupid furby turns into a gremlin if I feed him too late. PLEASE HELP ME!!!",
  user_id: 4,
  img_path: "http://nme.assets.ipccdn.co.uk/images/2015Gremlins_GettyImages-163067748261115.article_x4.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "What the FUCK are these things?!!",
  body_text: "What are these things?!?!?!?!",
  user_id: 11,
  img_path: "https://nerdinthecity.files.wordpress.com/2015/11/wpid-screenshot_2015-11-02-06-59-09-1.png"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "This show is sooo RAD!!!",
  body_text: "The answer is yes.",
  user_id: 5,
  img_path: "http://vignette3.wikia.nocookie.net/miamivice/images/1/15/Vicelogo.jpg/revision/latest?cb=20110901122221"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Does anyone else miss 'Happy Days' aka the 50's?",
  body_text: "... cause I do",
  user_id: 10,
  img_path: "http://imgsrv.legends1027.com/image/wlgz/UserFiles/Image/Wiki%20Corner/happy-Days.png"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Beatles reunion tour!!!",
  body_text: "PLEASE?!",
  user_id: 7,
  img_path: "http://i.dailymail.co.uk/i/pix/2013/02/05/article-0-175DCBE1000005DC-162_634x411.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Should we bring back 70's disco?",
  body_text: "Nope.",
  user_id: 9,
  img_path: "http://photos2.meetupstatic.com/photos/event/9/3/3/c/600_343537692.jpeg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "I don't know what to talk about.",
  body_text: "Nope.",
  user_id: 5,
  img_path: ""
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Default Images be like ERRRMAAGHHH!!!",
  body_text: "Nope.",
  user_id: 1,
  img_path: ""
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Can I get snapchat on this thing??!",
  body_text: "",
  user_id: 2,
  img_path: "http://cdn.agilitycms.com/polaroid/MediaGroupings/1143/ONESTEP_600_00.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Are these things worth anything now a days?",
  body_text: "Only if there's a red panda one. RAWR",
  user_id: 2,
  img_path: "http://images.complex.com/complex/image/upload/c_limit,fl_progressive,q_80,w_680/pbatelspycol8d1vhie3.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Can you use these worthless things for anything??",
  body_text: "Nope but don't ever. EVER. throw them away.",
  user_id: 2,
  img_path: "http://vignette4.wikia.nocookie.net/crazybonespedia/images/c/c1/Welcumppl.png/revision/latest?cb=20120610122608"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "In Memoriam.",
  body_text: "RIP",
  user_id: 2,
  img_path: "http://media.salon.com/2015/07/fredrogers-690x460-1.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Which one would you be?",
  body_text: "I personally would be Dimitri. Flying is dope.",
  user_id: 2,
  img_path: "http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/landhed.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

question = Question.create(
  title: "Reward for lost keychain",
  body_text: "I lost my pet and can't find him. Reward if found. $1 million thank yous.",
  user_id: 2,
  img_path: "https://s-media-cache-ak0.pinimg.com/564x/58/7e/b3/587eb3ded30a5ccfa5e9ce75a8488227.jpg"
  )
question.votes.create(user_id: users.sample.id, value: [-1,1].sample)

##################################################

######### Randomly Generated Questions ###########

# 100.times do
# question = Question.create(
#   title: Faker::Hacker.say_something_smart,
#   body_text: Faker::Hacker.say_something_smart,
#   user_id: users.sample.id,
#   img_path: ""
#   )
# question.votes.create(user_id: users.sample.id, value: [-1,1].sample)
# end

# questions = Question.all

##################################################

################### ANSWERS ######################

answer = Answer.create(
    text: "NO!!! The 80's were way better.",
    user_id: 4,
    question_id: 1
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)

  answer.comments.create(user_id: users.sample.id, text: "I strongly disagree duuuude.")

  answer = Answer.create(
    text: "Everybody love everybody! The 70's were far out.",
    user_id: 7,
    question_id: 1
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)

  answer.comments.create(user_id: users.sample.id, text: "What does that even mean???")

  answer = Answer.create(
    text: "Never feed your Gremlin past midnight you idiot! Otherwise, they will turn evil and scary!!!",
    user_id: 5,
    question_id: 3
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)

    answer = Answer.create(
    text: "They are called trolls",
    user_id: 8,
    question_id: 4
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)

  answer = Answer.create(
    text: "They are just naked hippies without jobs!",
    user_id: 8,
    question_id: 4
    )

  answer.votes.create(user_id: users.sample.id, value: [-1,1].sample)
