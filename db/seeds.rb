# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#helpful commands:
#rake tmp:clear
SituationChoice.destroy_all
UserChoice.destroy_all
User.destroy_all
Situation.destroy_all
Choice.destroy_all


puts "seeding users..."

user = User.create(username: "jesus", password: "test")
user2 = User.create(username: "woodstock", password: "kettlecorn")

puts "seeding situations..."
situation1 = Situation.create(story_text: "1")
situation2a = Situation.create(story_text: "2A")
situation2b = Situation.create(story_text: "2B")

puts "seeding choices"
choice0 = Choice.create(choice_text: "In the beginning")
choice1a = Choice.create(choice_text: "1A")
choice1b = Choice.create(choice_text: "1B")
choice2aa = Choice.create(choice_text: "2AA")
choice2ab = Choice.create(choice_text: "2AB")

puts "seeding situation_choices..."
SituationChoice.create(choice: choice0, situation: situation1, outcome: false)
SituationChoice.create(choice: choice1a, situation: situation1, outcome: true)
SituationChoice.create(choice: choice1a, situation: situation2a, outcome: false)
SituationChoice.create(choice: choice1b, situation: situation1, outcome: true)
SituationChoice.create(choice: choice1b, situation: situation2b, outcome: false)
SituationChoice.create(choice: choice2aa, situation: situation2a, outcome: true)
SituationChoice.create(choice: choice2ab, situation: situation2a, outcome: true)

puts "seeding user_choices..."
user_choice_new = UserChoice.create(user: user2, choice: choice0)
user_choice1a = UserChoice.create(user: user, choice: choice1a)


puts "seeding complete!"

