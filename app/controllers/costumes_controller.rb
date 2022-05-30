class CostumesController < ApplicationController
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

  private

  def costume_params()
    params.require(:costume).permit(:name, :price, :description, :size, :category)
  end

  def set_costume
    @costume = Costume.find(params[:costume_id])
  end
end
