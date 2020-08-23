class Api::V1::MealFoodsController < ApplicationController

  def index
    @meal_food = MealFood.all

    render json: MealFoodSerializer.new(@meal_food), status: 200
  end
end
