class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users, status: 200
  end
end
