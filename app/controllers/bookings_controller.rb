class BookingsController < ApplicationController
  before_action :set_costume, only: [:new, :create]
  before_action :set_booking, only: [:accept, :decline, :destroy!]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    @booking.user = current_user
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to my_booking_path
  end

  def my_booking
    # to get the bookings that I am renting from other users
    @bookings = Booking.where(user_id: current_user.id)
    # raise
    @my_costume_bookings = Booking.where(costume_id: Costume.where(user: current_user))
    # raise
  end

  def accept
    @booking.accepted = "Accepted"
    @booking.save
    redirect_to my_booking_path, status: :see_other
  end

  def decline
    @booking.accepted = "Declined"
    @booking.save
    redirect_to my_booking_path, status: :see_other
  end

  def destroy!
    @booking.destroy
    redirect_to my_booking_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_costume
    @costume = Costume.find(params[:costume_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
# costume.user not user.booking
