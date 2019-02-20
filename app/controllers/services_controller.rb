class ServicesController < ApplicationController
  before_action :set_service, only: [:show] # pending :edit, :update, :destroy

  def index
    @services = Service.all
  end

  def new
    @user = current_user # pour tester le formulaire, à surement remplacer/supprimer
    @service = Service.new
  end

  def show # GET user_service     /users/:user_id/services/:id                                                   services#show
    set_service
    @user = User.find(service.user_id)
  end

  def create # POST /services
    @service = Service.new(service_params)
    @service.save
    redirect_to user_services_path(@service)
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :price, :details, :city, :event_type)
  end
end
