class Api::V1::MealsController < ApplicationController

  def index

    if logged_in?
      # binding.pry
      @meals = current_user.diaries.map do |diary|
        diary.meals
      end
      render json: @meals, status: 200
      # ************* NEED TO GET THE SERIALIZER TO WORK. CURRENT ERROR: id is a mandatory field in the jsonapi spec
      # render json: MealSerializer.new(@meals), status: 200
    else
      render json: {
        error: "You must be logged in to see meals"
      }
    end
  end

end
