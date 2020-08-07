class ApplicationController < ActionController::API
  # does this need to be private?
  def current_user
    # mocked version of being loggd in
    User.first
  end

  def logged_in?
    !!current_user
  end
end
