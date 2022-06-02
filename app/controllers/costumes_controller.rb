class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def edit
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

  def update
    if @costume.update(costume_params)
      redirect_to @costume
    else
      render :edit
    end
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @costume.destroy
    redirect_to costumes_path, status: :see_other
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :price, :description, :size, :category, :photo_url)
  end

  def set_costume
    @costume = Costume.find(params[:id])
  end
end
