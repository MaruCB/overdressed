class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to my_booking_path
  end

  def my_booking
    # to get the bookings that I am renting from other users
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
# costume.user not user.booking
