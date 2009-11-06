class IssuuUploadsController < ApplicationController
  
  def index
   @issuu = Issuu.upload_issuu(params)
  # raise @issuu.to_yaml
  end
  
  def show
    
  end
end
