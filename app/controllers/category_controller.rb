class CategoryController < ApplicationController
    def index
      @category = Category.all
      
    end
    
    def show
    
    end
  
    private
  
    def category_params
      params.require(:category).permit(:name)
    end
  end