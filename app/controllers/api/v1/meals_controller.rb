class Api::V1::MealsController < ApplicationController

  def index

    if logged_in?
      # can only show meals for one diary at a time, which is okay for what I want. But is there a way to show ALL meals at once while using Serializer? If I just render json: @meals, I get an error on the frontend
      @current_diary = current_user.diaries.find_by :date => Date.today
      @current_meals = @current_diary.meals
      # render json: @meals, status: 200
      # ************* NEED TO GET THE SERIALIZER TO WORK. CURRENT ERROR: id is a mandatory field in the jsonapi spec
      render json: MealSerializer.new(@current_meals), status: 200
    else
      render json: {
        error: "You must be logged in to see meals"
      }
    end
  end

end
