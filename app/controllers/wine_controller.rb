class WineController < ApplicationController
  def index
    @wine=Wines.all
  end
end
