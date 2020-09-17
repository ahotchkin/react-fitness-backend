class Api::V1::MealsController < ApplicationController

  def index

    if logged_in?
      # can only show meals for one diary at a time, which is okay for what I want. But is there a way to show ALL meals at once while using Serializer? If I just render json: @meals, I get an error on the frontend

      # gives an error if there is no current diary. maybe don't show this on signup????? or automatically create diary on signup?????
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

  def update
    if current_meal.update(meal_params)
      render json: MealSerializer.new(current_meal), status: 200
    else
      resp = {
        :error => @meal.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end

  end

  private

    def current_meal
      meal = Meal.find_by_id(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:diary_id, :category, :calories)
    end


end
