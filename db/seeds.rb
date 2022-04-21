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

    Nora slid her cell phone off the countertop next to her in a manner she hoped was surreptitious; unfortunately, the man spotted this immediately.  They made eye contact for a brief still moment before two things happened at once: Nora bolted towards her living room, and the intruder appeared on the other side of her kitchen with her phone in hand.
    
    …What?
    
    Nora stood in the doorway, dumbfounded.  It was impossible for him to have moved that fast, all her eyes had registered was a yuppy blur.  True fear began to rise in the pit of her stomach, and she turned towards the front door – only to run smack into a small, oddly sturdy woman with dark curly hair.
    
    “Forget her, grab the cat!”  The man yelled from the kitchen.
    
    Chaos broke out as a third pale intruder burst from her hallway closet, and a fourth from her bathroom.
    ")
situation4bb = Situation.create(story_text: "Before she can reach it, the front door swings open.  A fifth unknown pale figure appears in the doorframe, taller and more commanding than the rest.

    “EVERYONE CALM DOWN.”  The new figure booms.  A moment of silence sweeps across the room.  The newcomer turns to a petrified Nora.
    
    “Nora, I’m sorry for the stress and inconvenience we have caused.  Allow me to introduce myself and explain.  I am Drax, and these are my children.”
    ")
situation5bbb = Situation.create(story_text: "Nora arrives at the police station doors gasping for breath.  She has barely a moment to regain her composure before two officers approach her, clearly worried about the visibly distressed panda.  After giving a cursory account of the events from just a few minutes prior, the officers accompany her back to her apartment.

    When Nora re-enters her apartment, it’s as clean and empty as it had been before the morning’s events.
    
    The towels in the hallway closet had been refolded.  The spilled salt was cleaned off the table, the shakers back in their positions, the cushions placed back onto the sofa.  Everything was in its place, and there was no evidence of the pale strangers.
    ")
situation4bbb_epilogue = Situation.create(story_text: "Nora’s life returns to normal.  Archduke Ferdinand mysteriously returns after a few days.  When Nora gets a cold and stays home from work, she notices his newfound tendency to disappear during business hours; he always comes back, though, so it’s not cause for concern.  The salad establishment Sweetgreen disappears and no one else seems to notice [but no one cares] and Beyond Meat begins to carry duck blood for their Polish customers.  None of this affects Nora, and she continues about her calm, content life.")

puts "seeding choices"
choice0 = Choice.create(choice_text: "In the Beginning")
choice1a = Choice.create(choice_text: "Nora shook off her suspicions and walked through her front door.")
choice1b = Choice.create(choice_text: "Nora turned to investigate, walking into her brightly lit, modern kitchen.")
choice2aa = Choice.create(choice_text: "2AA")
choice2ab = Choice.create(choice_text: "2AB")
choice2ba = Choice.create(choice_text: "Nora screamed and threw the nearby fruit bowl at his head.")
choice2bb = Choice.create(choice_text: "“Hello.  I believe you were just leaving.”  Nora said sternly.")
choice3baa = Choice.create(choice_text: "Nora ran towards the front door.")
choice3bab = Choice.create(choice_text: "Nora ran to the bedroom for Archduke Ferdinand.")
choice4bba = Choice.create(choice_text: "Nora takes a steadying breath and allows him to continue.")
choice4bbb = Choice.create(choice_text: "Nora sprints past the man and books it down the street towards the police station.")
choice5bbba = Choice.create(choice_text: "Nora insists to the officers that the strangers had just been here, that they had to believe her and search for evidence.")
choice5bbbb = Choice.create(choice_text: "Nora mumbles an apology and thanks the officers for their time.")

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
SituationChoice.create(choice: choice3baa, situation: situation3bb, outcome: true)
SituationChoice.create(choice: choice3bab, situation: situation3bb, outcome: true)
SituationChoice.create(choice: choice3baa, situation: situation4bb, outcome: false)
# SituationChoice.create(choice: choice3bab, situation: situation4bb, outcome: false)
SituationChoice.create(choice: choice4bba, situation: situation4bb, outcome: true)
SituationChoice.create(choice: choice4bbb, situation: situation4bb, outcome: true)
SituationChoice.create(choice: choice4bbb, situation: situation5bbb, outcome: false)
SituationChoice.create(choice: choice5bbba, situation: situation5bbb, outcome: true)
SituationChoice.create(choice: choice5bbbb, situation: situation5bbb, outcome: true)
SituationChoice.create(choice: choice5bbbb, situation: situation4bbb_epilogue, outcome: false)

puts "seeding user_choices..."
user_choice_new = UserChoice.create(user: user2, choice: choice0)
user_choice1a = UserChoice.create(user: user, choice: choice1a)


puts "seeding complete!"

