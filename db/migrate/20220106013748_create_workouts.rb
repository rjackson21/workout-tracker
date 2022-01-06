class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.integer :duration
      t.datetime :date

      t.timestamps
    end
  end
end
