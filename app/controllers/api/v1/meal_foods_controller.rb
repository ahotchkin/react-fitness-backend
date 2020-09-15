class Api::V1::MealFoodsController < ApplicationController

  def index
    @meal_food = MealFood.all

    render json: MealFoodSerializer.new(@meal_food), status: 200
  end

  def create
    # should I use build to build on the user's exercises? if I do that do I need to pass in the user_id?????
    @meal_food = MealFood.new(meal_food_params)
    if @meal_food.save
      render json: MealFoodSerializer.new(@meal_food), status: :created
    else
      resp = {
        :error => @meal_food.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  private

    def meal_food_params
      params.require(:meal_food).permit(:meal_id, :food_id, :number_of_servings, :calories)
    end

end
