class Api::V1::MealsController < ApplicationController

  def index
    if logged_in?
      @meals = []
      current_user.diaries.each { |diary| @meals << diary.meals }
      render json: MealSerializer.new(@meals.flatten), status: 200
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
