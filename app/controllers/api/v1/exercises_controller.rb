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
end
