class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @services = Service.all
  end

  def method_name

  end

  def new
    @user = current_user # pour tester le formulaire, à surement remplacer/supprimer
    @service = Service.new
  end

  def create # POST /services
    @service = Service.new(service_params)
    @service.save
    redirect_to user_services_path(@service)
  end

  private

  def service_params
    params.require(:service).permit(:title, :price, :details, :city, :event_type)
  end

end
