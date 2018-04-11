class WineController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @wines=Wine.all
  end
  def show
    puts params[:taste]

  end

end
