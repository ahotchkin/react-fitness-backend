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
    if !Diary.find_by(:date => diary_params[:date])
      @diary = Diary.new(diary_params)
      if @diary.save
        @breakfast = @diary.meals.build(:category => "breakfast")
        @breakfast.save

        @lunch = @diary.meals.build(:category => "lunch")
        @lunch.save

        @dinner = @diary.meals.build(:category => "dinner")
        @dinner.save

        @snacks = @diary.meals.build(:category => "snacks")
        @snacks.save

        render json: DiarySerializer.new(@diary), status: :created
      else
        resp = {
          :error => @diary.errors.full_messages.to_sentence
        }
        render json: resp, status: :unprocessable_entity
      end
    end
  end

  private

    def diary_params
      params.require(:diary).permit(:user_id, :date)
    end

end
