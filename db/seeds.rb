# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
Category.create(name: "Cardio")
Category.create(name: "Mindfulness")
Category.create(name: "Weightlifting")

Workout.create(workout_type:"Yoga", duration:60, category_id:2)