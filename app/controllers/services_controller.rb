class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_service, only: [:show] # pending :edit, :update, :destroy

  def index
    if params[:query].present?
      sql_query = " \
        services.title @@ :query \
        OR services.city @@ :query \
        OR services.event_type @@ :query \
        OR services.details @@ :query \
        OR users.first_name @@ :query \
        OR users.last_name @@ :query \
        OR users.bio@@ :query \
        OR users.skills @@ :query \
      "
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end
    @services = Service.all
  end

  def method_name
  end

  def new
    @user = current_user # pour tester le formulaire, à surement remplacer/supprimer
    @service = Service.new
  end

  def show # GET user_service     /users/:user_id/services/:id                                                   services#show
    @user = @service.user
    @booking = Booking.new
  end

  def create # POST /services
    @service = Service.new(service_params)
    @service.user = current_user
    @service.save
    redirect_to services_path
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :price, :details, :city, :event_type, :service_image)
  end
end
