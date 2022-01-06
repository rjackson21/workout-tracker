class AddDayOfWeekToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :day_of_week, :string
  end
end
