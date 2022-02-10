class WorkoutsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destory]
  
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

  def edit
    @workout = Workout.find(params[:id])
    render :edit
  end
  
  def update
    workout = Workout.find(params[:id])
    workout.update(workout_params)

    flash[:notice] = "You've successfully updated the workout"

    redirect_to "/workout/index"
  end

  def new
    @workout = Workout.new
    
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    flash[:notice] = "You've deleted #{@workout.workout_type}"
    redirect_to root_path
  end  

  def correct_user
    @workout = current_user.workouts.find_by(id: params[:id])
    redirect_to workouts_path, notice: "Not Authorized" if @workout.nil?
  end


  private

  def workout_params
    params.require(:workout).permit(:workout_type, :duration, :date, :category_id, :user_id)
  end
end
