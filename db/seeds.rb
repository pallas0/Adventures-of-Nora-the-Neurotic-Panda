# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all

# User.destroy_all
# Situation.destroy_all
# Choice.destroy_all

# puts "seeding users..."

# User.create(name: 'Nora', username: 'neuroticpanda', email: 'neuroticpanda@gmail.com', password: 'pandapanda')

# puts "seeding situations..."
# situation1 = Situation.create(story_text: "1")
# situation2a = Situation.create(story_text: "2A")
# situation2b = Situation.create(story_text: "2B")

# #puts "seeding choices"
# Choice.create(choice_text: "1A", situation_id: situation1.id)


puts "seeding complete!"


#to mention to jonathon/general scratch
#ok, w this, able to access choice instance through situation instance
#but not able to access situation instance through choice instance

#model relationships???
#changed 'has_many' to 'belongs_to' in choices model, stopped working
#as in, returned nil
#can you have both? what exactly is the deal w foreign keys?


#to do
#add column to choice for next_situation

#ok, let's just write out the question we're asking:

#what are you trying to do?
#
#ok, I think we need to solve the original problem: why tf can't we access
#situations through choice?
#end
