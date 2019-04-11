class ApplicationController < ActionController::Base

    helper_method :current_user

    private
    # Getter method for current user
    def current_user
      @current_user ||= Reporter.find_by(uid: session[:uid])
    end
    # Setter method for current user
    def current_user=(reporter)
      session[:uid] = reporter.uid
      session[:name] = reporter.name
    end

end
