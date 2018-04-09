class SpeakersController < ApplicationController
  def index

  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker = Speaker.new(user_params)
    if @speaker.save
      login(@speaker)
      redirect_to questions_path
      flash[:notice] = "You are in Cheers!"
    else
      flash[:error] = @speaker.errors.full_messages.join(" ")
      redirect_to new_user_path
    end
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
