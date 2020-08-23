class Api::V1::FoodsController < ApplicationController

  def index
    @foods = Food.all

    render json: FoodSerializer.new(@foods), status: 200

    # if logged_in?
    #   @current_diary = current_user.diaries.find_by :date => Date.today
    #   @current_meals = @current_diary.meals
    #   @current_foods = @current_meals.foods
    #   # render json: @meals, status: 200
    #   # ************* NEED TO GET THE SERIALIZER TO WORK. CURRENT ERROR: id is a mandatory field in the jsonapi spec
    #   render json: FoodSerializer.new(@current_foods), status: 200
    # else
    #   render json: {
    #     error: "You must be logged in to see foods"
    #   }
    # end
  end


end
