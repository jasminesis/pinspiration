class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
    @boards = Board.all
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user

    if @pin.save!
      redirect_to @pin
    else 
      @boards = Board.all
      render 'new'
    end
  end

  def edit

  end

  def show
    @pin = Pin.find(params[:id])
  
  end
  
  private

  def pin_params
    params.require(:pin).permit(:title, :image_url, :board_id)
  end


end

