class BookingsController < ApplicationController

  def index # Dashboard
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @service = Service.find(params[:service_id])
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path(@booking.user)
    else
      redirect_to service_path(@service), alert: "Vous devez sélectionner les deux dates"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date)
  end
end
