class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def create
    workout = Workout.new(workout_params)
    
    if workout.save
      redirect_back fallback_location: root_path
    else
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  private

  def workout_params
    params.require(:workout).permit(:workout_type, :duration, :date, :category_id)
  end
end
