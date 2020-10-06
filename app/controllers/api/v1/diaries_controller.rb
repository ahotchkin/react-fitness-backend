class Api::V1::DiariesController < ApplicationController

  def index
    if logged_in?
      @diaries = current_user.diaries
      render json: DiarySerializer.new(@diaries), status: 200
    else
      render json: {
        error: "You must be logged in to see diaries"
      }
    end
  end
  # def index
  #
  #   if logged_in?
  #     @exercises = current_user.exercises
  #
  #     render json: ExerciseSerializer.new(@exercises), status: 200
  #   else
  #     render json: {
  #       error: "You must be logged in to see exercises"
  #     }
  #   end
  # end
  #
  def create
    # should I use build to build on the user's diaries? if I do that do I need to pass in the user_id?????
    @diary = Diary.new(diary_params)
    if @diary.save
      @breakfast = @diary.meals.build(:category => "Breakfast")
      @breakfast.save

      @lunch = @diary.meals.build(:category => "Lunch")
      @lunch.save

      @dinner = @diary.meals.build(:category => "Dinner")
      @dinner.save

      @snacks = @diary.meals.build(:category => "Snacks")
      @snacks.save

      render json: DiarySerializer.new(@diary), status: :created
    else
      resp = {
        :error => @diary.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  private

    def diary_params
      params.require(:diary).permit(:user_id, :date)
    end

end
