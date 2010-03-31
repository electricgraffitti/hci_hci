class LandingPagesController < ApplicationController
  
  def cra_landing
    
  end
  
  def ceo_up_landing
    @button_text = "Get Thought Paper"
    respond_to do |format|
      format.html { render :layout => "landing_pages"}
    end
  end
  
end
