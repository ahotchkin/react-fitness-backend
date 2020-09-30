class Api::V1::ExercisesController < ApplicationController

  def index

    if logged_in?
      @exercises = current_user.exercises

      render json: ExerciseSerializer.new(@exercises), status: 200
    else
      render json: {
        error: "You must be logged in to see exercises"
      }
    end
  end

  def create
    # should I use build to build on the user's exercises? if I do that do I need to pass in the user_id?????
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      render json: ExerciseSerializer.new(@exercise), status: :created
    else
      resp = {
        :error => @exercise.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def show
    render json: ExerciseSerializer.new(current_exercise), status: 200
  end

  def update
    if current_exercise.update(exercise_params)
      render json: ExerciseSerializer.new(current_exercise), status: 200
    else
      resp = {
        :error => @exercise.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def destroy
    # make sure current user is logged in before deleting exercise??????????
    # binding.pry
    if current_user.id == current_exercise.user.id
      current_exercise.delete
      render json: { message: "Exercise successfully deleted" }, status: 200
      # how can I get this message to show on frontend????
    else
      error_resp = {
        error: "Exercise could not be found and deleted"
      }
      render json: error_resp, status: :unprocessable_entity
    end
    # @exercise = Exercise.find(params[:id])
    # @exercise.delete
  end


  private
    # def set_user
    #   @user = User.find(params.id)
    # end
    def current_exercise
      exercise = Exercise.find_by_id(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:user_id, :date, :category, :name, :duration_in_minutes, :calories_burned)
    end

end
