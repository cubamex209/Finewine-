class SpeakerController < ApplicationController

  def index
    @speaker=Speaker.all
  end

  def new
    @speaker =Speaker.new
  end

  def create
    puts speaker_params
    @speaker = Speaker.new(speaker_params)
      if @speaker.save
          login(@speaker)
          redirect_to questions_path
          flash[:notice] = "Successfully logged in."
      else
        flash[:error] = @speaker.errors.full_messages.join(" ")
        redirect_to new_speaker_path
        end
    end
    def show
        @speaker = Speaker.find(params[:id])
    end

    private

      def speaker_params
        params.require(:speaker).permit(:email, :password)
      end

end
