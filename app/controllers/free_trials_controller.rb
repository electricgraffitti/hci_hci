class FreeTrialsController < ApplicationController
  
  before_filter :require_user, :except => [:show]
  
  def index
  end

  def show
    redirect_to "http://www2.hcinsight.com/l/1492/2009-10-02/F2GET"
  end

end
