class AddCategoryIdToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :category_id, :integer
  end
end
