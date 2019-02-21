class DashboardsController < ApplicationController
  def show
    @user = current_user
    @services = current_user.services
    @bookings = Booking.all.where(@user == :user_id)
  end

  def edit
  end
end
