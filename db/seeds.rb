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
e1 = Exercise.create(name: 'jumping jacks', difficulty: 3)
e2 = Exercise.create(name: 'squats', difficulty: 3)
e3 = Exercise.create(name: 'lunges shoulder military press', difficulty: 2)
e4 = Exercise.create(name: 'squat shoulders front raise', difficulty: 2)
e5 = Exercise.create(name: 'sumo squat', difficulty: 3)
e6 = Exercise.create(name: 'abs shoudlers military press', difficulty: 1)
e7 = Exercise.create(name: 'alternating arms and legs abs', difficulty: 3)
e8 = Exercise.create(name: 'back lunge shoudlers lateral raise', difficulty: 2)
e9 = Exercise.create(name: 'bicycle abs', difficulty: 1)
e10 = Exercise.create(name: 'crunches', difficulty: 2)
e11 = Exercise.create(name: 'dead lift', difficulty: 1)
e12 = Exercise.create(name: 'plank', difficulty:1)

legs.exercises.concat([e2, e3, e4, e5, e8, e11])
shoulders.exercises.concat([e3, e4, e6, e8])
core.exercises.concat([e6, e7, e9, e10, e12])
warmup.exercises.concat([e1, e2])


# Equipment.create(name: "Name")
# Equipment.create(name: "Nam2")
# Equipment.create(name: "Nam4")
