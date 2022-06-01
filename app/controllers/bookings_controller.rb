class BookingsController < ApplicationController
  before_action :set_costume, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to my_booking_path
  end

  def my_booking
    # to get the bookings that I am renting from other users
    @bookings = Booking.where(user_id: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_costume
    @costume = Costume.find(params[:costume_id])
  end
end
# costume.user not user.booking
