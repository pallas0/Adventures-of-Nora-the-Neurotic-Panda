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
situation1 = Situation.create(story_text: "Nora’s paw hovered above her front door knob as she decided how to respond to the mysterious thud from her kitchen.

    She loathed being late, and the project deadline loomed uncomfortably close; then again, she might not be able to focus wondering if her apartment was being burgled during her daily commute.
    ")
situation2a = Situation.create(story_text: "2A")
situation2b = Situation.create(story_text: "Nora turned to investigate, walking into her brightly lit, modern kitchen.  The salt and pepper shakers, normally resting on her bistro table in the corner of the room, were knocked clear across the table.  This was not an abnormal occurrence, given the energy levels of Nora’s cat, Archduke Ferdinand, but what was odd was that Nora knew for a fact that Archduke Ferdinand was currently napping in a patch of light in her bedroom.

    Scowling, Nora turned around to check on Archduke Ferdinand, and froze.  A tall, pale man with a neat haircut and polo outfit stared back at her from the nook beside her refrigerator.
    
    Nora’s mind buzzed with panic.  This man was bizarrely well-dressed to be a thief, and clearly had very little experience with thieving.  Maybe this strange situation could be resolved calmly - then again, she was a single panda living on her own, and she had just caught this man in the process of trespassing in her apartment.
    ")
situation3bb = Situation.create(story_text: "The man gave a nervous laugh and wrung his hands, but made no motion to leave.

    Nora slid her cell phone off the countertop next to her in a manner she hoped was surreptitious; unfortunately, the man spotted this immediately.
    ")

puts "seeding choices"
choice0 = Choice.create(choice_text: "In the Beginning")
choice1a = Choice.create(choice_text: "Nora shook off her suspicions and walked through her front door.")
choice1b = Choice.create(choice_text: "Nora turned to investigate, walking into her brightly lit, modern kitchen.")
choice2aa = Choice.create(choice_text: "2AA")
choice2ab = Choice.create(choice_text: "2AB")
choice2ba = Choice.create(choice_text: "Nora screamed and threw the nearby fruit bowl at his head.")
choice2bb = Choice.create(choice_text: "“Hello.  I believe you were just leaving.”  Nora said sternly.")

puts "seeding situation_choices..."
SituationChoice.create(choice: choice0, situation: situation1, outcome: false)
SituationChoice.create(choice: choice1a, situation: situation1, outcome: true)
SituationChoice.create(choice: choice1a, situation: situation2a, outcome: false)
SituationChoice.create(choice: choice1b, situation: situation1, outcome: true)
SituationChoice.create(choice: choice1b, situation: situation2b, outcome: false)
SituationChoice.create(choice: choice2aa, situation: situation2a, outcome: true)
SituationChoice.create(choice: choice2ab, situation: situation2a, outcome: true)
SituationChoice.create(choice: choice2ba, situation: situation2b, outcome: true)
SituationChoice.create(choice: choice2bb, situation: situation2b, outcome: true)
SituationChoice.create(choice: choice2bb, situation: situation3bb, outcome: false)

puts "seeding user_choices..."
user_choice_new = UserChoice.create(user: user2, choice: choice0)
user_choice1a = UserChoice.create(user: user, choice: choice1a)


puts "seeding complete!"

