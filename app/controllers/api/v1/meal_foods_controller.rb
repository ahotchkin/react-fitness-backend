class Api::V1::MealFoodsController < ApplicationController

  def index
    if logged_in?
      @meals = []
      @meal_foods = []
      current_user.diaries.each { |diary| @meals << diary.meals }
      @meals.flatten.each { |meal| @meal_foods << meal.meal_foods }
      render json: MealFoodSerializer.new(@meal_foods.flatten), status: 200
    else
      render json: {
        error: "You must be logged in to see meal_foods"
      }
    end

  end

  def create
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

  def update
    if current_meal_food.update(meal_food_params)
      render json: MealFoodSerializer.new(current_meal_food), status: 200
    else
      resp = {
        :error => @meal_food.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.id == current_meal_food.meal.diary.user_id
      current_meal_food.delete
      render json: { message: "MealFood successfully deleted" }, status: 200
    else
      error_resp = {
        error: "MealFood could not be found and deleted"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  private

    def current_meal_food
      meal_food = MealFood.find_by_id(params[:id])
    end

    def meal_food_params
      params.require(:meal_food).permit(:meal_id, :food_id, :number_of_servings, :calories, :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium)
    end

end
