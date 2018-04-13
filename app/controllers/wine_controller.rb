class WineController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @wines=Wine.all
  end
  def show
    @choices = { :taste => params[:taste], :smell => params[:smell], :food =>params[:food]}
    @taste_list = {:salty => 4, :sour => 3, :bitter => 2, :sweet => 1}
    @food_list = {:steak => 'a', :chicken => 'b', :fish => 'c', :veggies => 'd'}
    @smells_list = {:rosemary => 'z', :oak => 'y', :lavendar => 'x', :lemon => 'w'}
    @choice_number = @taste_list[@choices[:taste].to_sym].to_s + @food_list[@choices[:food].to_sym]  + @smells_list[@choices[:smell].to_sym]

    puts @choice_number
    # @wine = Wine.find({choice: })
    @wine = Wine.where(tag: @choice_number)
  end

end
