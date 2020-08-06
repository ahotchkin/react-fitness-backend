class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    user_json = UserSerializer.new(@user).serialized_json

    # render json: @user, status: 200
    render json: user_json
  end
end
