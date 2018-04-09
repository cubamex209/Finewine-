class SessionsController < ApplicationController

  def new
    @speaker =Speaker.new
  end

  def create
    user_params = params.require(:speaker).permit(:email, :password)
    @speaker = Speaker.confirm(user_params)
      if @speaker
          login(@speaker)
          flash[:notice] = "Successfully logged in."
          redirect_to questions_path
      else
          flash[:error] = "Incorrect email or password!"
          redirect_to login_path
        end
    end

      def destroy
        logout
        flash[:notice] = "Successfully logged out."
        redirect_to root_path
      end
  end
