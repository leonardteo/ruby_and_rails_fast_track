class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :initialize_app

  def initialize_app
    if session[:login_user_id]
      @login_user = User.find(session[:login_user_id])
    end
  end

  def require_login
    redirect_to "/admin/login" unless @login_user
  end

end
