class CostumesController < ApplicationController
  before_action :set_costume, only: [:show]

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :price, :description, :size, :category)
  end

  def set_costume
    @costume = Costume.find(params[:id])
  end
end
