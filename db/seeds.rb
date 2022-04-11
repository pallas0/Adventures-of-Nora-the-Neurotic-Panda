# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Situation.destroy_all
Choice.destroy_all

puts "seeding users..."

User.create(name: 'Jesus', username: 'jdog', email: 'son@fathersonholyghost.com', password: 'yourlordandsavior')

puts "seeding situations..."
situation1 = Situation.create(story_text: "1")
situation2a = Situation.create(story_text: "2A")
situation2b = Situation.create(story_text: "2B")

puts "seeding choices"
choice1a = Choice.create(choice_text: "1A")
choice1b = Choice.create(choice_text: "1B")

puts "seeding situation_choices..."
situation_choice1a = SituationChoice.create(choice: choice1a, situation: situation1)
situation_choice1b = SituationChoice.create(choice: choice1b, situation: situation1)


puts "seeding complete!"


#notes/general scratch
#ok, w this, able to access choice instance through situation instance
#but not able to access situation instance through choice instance

#model relationships???
#changed 'has_many' to 'belongs_to' in choices model, stopped working
#as in, returned nil
#can you have both? what exactly is the deal w foreign keys?

#end
