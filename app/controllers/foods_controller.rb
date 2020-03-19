class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    # binding.pry
    @food.save
    redirect_to root_path
  end


  private
  def food_params
    params.require(:food).permit(:id, :breakfast, :lunch, :dinner, :snack)
  end
end
