class Api::V1::FoodsController < ApplicationController

  def index
    if logged_in?
      @foods = Food.all
      render json: FoodSerializer.new(@foods), status: 200
    else
      render json: {
        error: "You must be logged in to see the foods database"
      }
    end
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      render json: FoodSerializer.new(@food), status: :created
    else
      resp = {
        :error => @food.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  private

    def food_params
      params.require(:food).permit(:user_id, :brand_name, :description, :serving_size, :servings_per_container, :calories, :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium)
    end

end
