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
  # def create
  #   # should I use build to build on the user's exercises? if I do that do I need to pass in the user_id?????
  #   @exercise = Exercise.new(exercise_params)
  #   if @exercise.save
  #     render json: ExerciseSerializer.new(@exercise), status: :created
  #   else
  #     resp = {
  #       :error => @exercise.errors.full_messages.to_sentence
  #     }
  #     render json: resp, status: :unprocessable_entity
  #   end
  # end
  #
  #
  # private
  #   # def set_user
  #   #   @user = User.find(params.id)
  #   # end
  #
  #   def exercise_params
  #     params.require(:exercise).permit(:user_id, :category, :name, :duration_in_minutes, :calories_burned)
  #   end

end
