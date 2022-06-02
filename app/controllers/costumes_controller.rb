class CostumesController < ApplicationController
  before_action :set_costume, only: [:show]

  def index
    @costumes = Costume.order(created_at: :desc)
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user_id = current_user.id
    @costume.save
    redirect_to costume_path(@costume)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def show
    @booking = Booking.new
  end

  def my_costume
    @costumes = Costume.where(user_id: current_user.id)
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :price, :description, :size, :category, :photo_url)
  end

  def set_costume
    @costume = Costume.find(params[:id])
  end
end
