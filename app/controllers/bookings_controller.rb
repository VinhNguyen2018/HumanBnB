class BookingsController < ApplicationController
  # before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index # Dashboard
    @bookings = Booking.all
  end

  def new # new_user_service_booking GET    /users/:user_id/services/:service_id/bookings/new
    raise
    @booking = Booking.new
  end

  def create # POST   /users/:user_id/services/:service_id/bookings(.:format)
    @booking = Booking.new(params[booking_params])
    @booking.save
    # redirect_to
  end

  private

  # def set_booking
  #   @booking = Service.find(params[:id])
  # end

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date)
  end
end
