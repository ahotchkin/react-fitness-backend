class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users, status: 200
  end

  def show
    # @user = User.find(params[:id])
    user_json = UserSerializer.new(@user).serialized_json

    # render json: @user, status: 200
    render json: user_json
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        :error => @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end


  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :gender, :age, :height_feet, :height_inches, :weight, :lifestyle, :daily_calorie_goal)
    end
end
