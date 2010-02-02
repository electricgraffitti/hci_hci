class FreeTrialsController < ApplicationController
  
  before_filter :require_user, :only => [:index]
  
  def index
  end

  def show
    redirect_to APP['free_trial_landing_page']
  end
  
  def executive_summit
    
  end
  
  def free_webinar
    
  end

end
