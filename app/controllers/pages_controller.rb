class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :results]

  def home
    @user = current_user # I need this to test new services, after we can delete it
  end

  def results
  end
end
