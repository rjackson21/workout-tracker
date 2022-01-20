class CategoryController < ApplicationController
    def index
      @categories = Category.all
    end
    
    def show
     @category = Category.find(params[:id])
     @workouts = @category.workouts
    end
  
    private
  
    def category_params
      params.require(:category).permit(:name)
    end
  end