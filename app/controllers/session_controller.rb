class SessionController < ApplicationController
  def new
    end
    def create
      # find the user based on their email
      @user  = User.find_by :email => params[:email]
      #if teh password autheticates
      if @user.present? && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to root_path
      else
        flash[:error] = "Invalid username or password"
        redirect_to login_path
      end

        #remeber this in teh session in the Session
      # else
        #send them to the login page again
    end
    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
end
