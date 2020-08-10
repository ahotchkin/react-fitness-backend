class ApplicationController < ActionController::API
  # ********* letting ApplicationController know you've turned these things on in application.rb
  include ::ActionController::Cookies
  # does this need to be private?
  def current_user
    User.find_by(:id => session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
