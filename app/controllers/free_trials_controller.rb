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

end
