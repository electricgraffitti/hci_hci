class RedirectsController < ApplicationController
  
  def cost_reduction
    redirect_to nucleus_path
  end
  
  def fraud_software
    redirect_to nucleus_path
  end
  
  def ahip_postcard
    redirect_to "http://www2.hcinsight.com/l/1492/2010-05-18/H4NLB"
  end
  
end
