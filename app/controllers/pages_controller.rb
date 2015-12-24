class PagesController < ApplicationController
 
  def index
  	@nowel = Nowel.all
  end

  def sapin
  	@nowel = Nowel.all
  	@size = 3
  end

  def create
  	Nowel.create number: params[:number]
  	redirect_to "/sapin"
  end

  def back
  	redirect_to "/index"
  end

end
