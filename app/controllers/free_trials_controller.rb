class FreeTrialsController < ApplicationController
  
  before_filter :require_user, :except => [:show]
  
  def index
  end

  def show
    redirect_to APP['free_trial_landing_page']
  end

end
