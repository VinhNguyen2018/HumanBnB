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
    if @service.save
      redirect_to services_path
    else
      redirect_to new_service_path, alert: "Vous devez remplir tous les champs"
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :city, :event_type, :price, :details, :service_image)
  end
end
