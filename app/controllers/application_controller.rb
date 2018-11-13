class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
def current_user
    if session[:user_id]
        User.find(session[:user_id])
    else
        User.new
    end
end

def logged_in?
    !!current_user.id
end

def authorized?
    if !logged_in?
        flash[:error] = "Not logged in"
        redirect_to login_path and return
    end
end


end
