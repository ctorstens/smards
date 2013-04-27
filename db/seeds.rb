require 'faker'

# CREATE USERS
###############################################
5.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    user_name: Faker::Internet.user_name,
    password: '1234'
    })
end

User.create({
  first_name: 'c',
  last_name: 't',
  email: 'c@t.com',
  user_name: 'ctorstens',
  password: '1234'
  })

users = User.all

# CREATE STACKS
###############################################

12.times do
  Stack.create({
    name: Faker::Lorem.word
    })
end

stacks = Stack.all

# CREATE CARDS
###############################################

300.times do
  Card.create({
    user: users.sample,
    answer: Faker::Lorem.word
  })
end

cards = Card.all




# Create & Add Questions to Cards
###############################################

cards.each do |card|
  (rand(3) + 1).times do
    card.questions << Question.create({
                        description: Faker::Lorem.sentence
                      })
  end
end

questions = Question.all


# Create & add statistics to questions
###############################################

questions.each do |question|
  (rand(14) + 1).times do
    question.statistics << Statistic.create({
                        correct: [true, false].sample
                        # TODO: figure out how to set fake creation dates
                      })
  end
end

# Add Stacks to Cards
###############################################

cards.each do |card|
  rand(4).times do
    a_stack = stacks.sample
    card.stacks << a_stack unless card.stacks.include?(a_stack)
  end
end


