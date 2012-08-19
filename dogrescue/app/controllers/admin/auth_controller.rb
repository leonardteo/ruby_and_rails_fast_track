class Admin::AuthController < ApplicationController

  layout "admin"

  # Logs the user in
  def login

    if request.post?

      user = User.find_by_email(params[:email])
      if user.nil?
        flash.now[:notice] = "No user with that email"
        return
      end

      if user.authenticate(params[:password])
        session[:login_user_id] = user.id
        flash[:notice] = "Welcome back #{user.first_name}!"
        redirect_to "/admin/dogs"
      else
        flash.now[:notice] = "Invalid password"
      end
      
    end

  end


  # Logs the user out
  def logout
    session[:login_user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to "/admin/login"
  end


end
