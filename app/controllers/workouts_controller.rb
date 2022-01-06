class WorkoutsController < ApplicationController
  def index
  end

  def create
    workout = Workout.new(workout_params)

    if workout.save
      redirect_back fallback_location: root_path
    else
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:workout_type, :duration, :date)
  end
end
