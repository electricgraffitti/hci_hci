class FreeTrialsController < ApplicationController
  
  before_filter :require_user, :only => [:index]
  
  layout "new_landing_page"
  
  def index
  end

  def show
    redirect_to APP['free_trial_landing_page']
  end
  
  def executive_summit
    
  end
  
  def free_webinar
    
  end
  
  def fci_webinar
    
  end
  
  def webinar_thank_you
    
    respond_to do |format|
    format.html {render :layout => "layout5"}
  end
  end

end
