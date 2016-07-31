# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)

# Equipment
Equipment.create([{ name: 'Dumbells' }, { name: 'Kettlebells' }, { name: 'Medicine Ball' }])

# Muscle Groups
legs = MuscleGroup.create(name: 'legs')
shoulders = MuscleGroup.create(name: 'shoulders')
warmup = MuscleGroup.create(name: 'warm up')
core = MuscleGroup.create(name: 'core')

# Exercises
e1 = Exercise.create(name: 'jumping jacks', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/jumping_jacks.m4v')
e2 = Exercise.create(name: 'squats', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/squats.m4v')
e3 = Exercise.create(name: 'lunges shoulder military press', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/lunges_shoulders_military_press.m4v')
e4 = Exercise.create(name: 'squat shoulders front raise', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/squat_shoulders_front_raise.m4v')
e5 = Exercise.create(name: 'sumo squat', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/sumo_squat.m4v')
e6 = Exercise.create(name: 'abs shoudlers military press', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/abs_shoulders_military_press.m4v')
e7 = Exercise.create(name: 'alternating arms and legs abs', difficulty: 3, video: 'https://s3.amazonaws.com/exercisevideos1/alternating_arms_legs_abs.m4v')
e8 = Exercise.create(name: 'back lunge shoudlers lateral raise', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/back_lunge_shoulders_lateral_raise.m4v')
e9 = Exercise.create(name: 'bicycle abs', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/bicycle_abs.m4v')
e10 = Exercise.create(name: 'crunches', difficulty: 2, video: 'https://s3.amazonaws.com/exercisevideos1/crunches.m4v')
e11 = Exercise.create(name: 'dead lift', difficulty: 1, video: 'https://s3.amazonaws.com/exercisevideos1/dead_lift.m4v')
e12 = Exercise.create(name: 'plank', difficulty:1, video: 'https://s3.amazonaws.com/exercisevideos1/plank.m4v')

legs.exercises.concat([e2, e3, e4, e5, e8, e11])
shoulders.exercises.concat([e3, e4, e6, e8])
core.exercises.concat([e6, e7, e9, e10, e12])
warmup.exercises.concat([e1, e2])




# Equipment.create(name: "Name")
# Equipment.create(name: "Nam2")
# Equipment.create(name: "Nam4")
