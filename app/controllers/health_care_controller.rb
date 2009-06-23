class HealthCareController < ApplicationController
  
  def index
    
  end
  
  def about
    
    respond_to do |format|
      format.html { render :layout => "layout4"}
      format.xml  { render :xml => @events }
    end
    
  end

end
