class ApplicationController < ActionController::API
  helpers do
    def current_user
      # mocked version of being loggd in
      User.first
    end

    def logged_in?
      !!current_user
    end
  end
end
