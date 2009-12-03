class HealthCareController < ApplicationController
  
  def index
    @articles = Article.small_list(4)
    @documents = Document.all
    @services = Service.all
  end
  
  def about
    
    respond_to do |format|
      format.html { render :layout => "layout2"}
      format.xml  { render :xml => @events }
    end
    
  end
  
  def trial
    @articles = Article.small_list(4)
    @documents = Document.all
    respond_to do |format|
      format.html { render :layout => "layout2"}
      format.xml  { render :xml => @events }
    end
  end
  
  def public_sector
    
  end
  
  def private_sector
  
  end
  
  def workers_comp
    
  end
  
  def careers
    
  end
  
  def social_media
  end
  
  def press_kit
  end
  
  def partners
  end
  
  def nucleus
    
  end
  
  def privacy_policy
    
  end

end
