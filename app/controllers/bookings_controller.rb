class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to costume_path(@costume)
  end

  def my_booking

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
