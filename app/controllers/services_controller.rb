class ServicesController < ApplicationController
  def new
    @service = Service.new
  end

  def create # POST /services
    @service = Service.new(service_params)
    @service.save
    # redirect_to user_services_path(@service)
  end

  private

  def service_params
    params.require(:service).permit(:title, :price, :details, :city, :event_type)
  end
end
