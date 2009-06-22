class SearchController < ApplicationController
  
  layout "layout4"
  
  def index
    @services = Service.search params[:search]
  end

end
