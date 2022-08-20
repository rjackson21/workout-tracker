# Workout Tracker

This is is a workout tracking app that helps keep track of different workouts. Workout data is displayed for the user as a a table and as a pie chart organized by workout type. This app was styled using Bootstrap, and is deployed at https://rails-workouts.herokuapp.com/. 

## Setup
1. Clone this repository
2. `cd` into it 
3. Start the PostgreSQL server (this command may vary depending on how you installed PostgreSQL) brew services start postgresql' and run the migrations `bundle exec rake db:migrate`. Seed the database with `rake db:seed`
4. Install the dependencies by running `bundle`
5. Start the Rails server by running `rails server` in the project root

The ruby version used is 2.7.0 and rails version 7.0.0

The application uses PostgreSQL as its database, so this must be installed.

