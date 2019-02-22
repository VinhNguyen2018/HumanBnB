class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [ :create]

  def new
    @review = Review.new
    @service = Service.find(params[:service_id])
  end

  def create
    @review = Review.new(review_params)
    @service = Service.find(params[:service_id])
    @review.user = current_user
    @review.service = @service
    if @review.save
      redirect_to service_path(@service)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
