class BookingsController < ApplicationController
  # before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index # Dashboard
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[booking_params])
    # => => <ActionController::Parameters {"utf8"=>"✓", "book"=>{"date_de_début"=>"2019-02-22 12:00", "date_de_fin"=>"2019-02-22 13:00"}, "commit"=>"Réserver", "controller"=>"services", "action"=>"show", "id"=>"1"} permitted: false>
    # http://localhost:3000/services/1?utf8=%E2%9C%93&book%5Bdate_de_d%C3%A9but%5D=2019-02-22+12%3A00&book%5Bdate_de_fin%5D=2019-02-22+12%3A00&commit=R%C3%A9server
    @booking.save
    redirect_to root_path
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
