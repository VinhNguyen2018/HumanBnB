class DashboardsController < ApplicationController
  def show
    @user_services = []
    @user = current_user
    @user.services.each do |service|
      @user_services << service.id
    end
    @myservices = Booking.all.where(service_id: @user_services)
    @bookings = Booking.all.where("user_id = ?", @user[:id])
  end

  def edit
    @dashboard = current_user
    @user = current_user
    user = User.find(@dashboard)
    user.update(user_params)
    redirecto_to
  end
end
