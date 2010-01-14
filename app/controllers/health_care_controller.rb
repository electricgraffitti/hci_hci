class HealthCareController < ApplicationController
  
  def index
    # @articles = Article.small_list(4)
    # @documents = Document.all
    # @services = Service.all
  end
  
  def about
    
    respond_to do |format|
      format.html { render :layout => "layout2"}
      format.xml  { render :xml => @events }
    end
    
  end
  
  def landing_page
    respond_to do |format|
      format.html { render :layout => "landing"}
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
    @services = Service.all
  end
  
  def private_sector
    @services = Service.all
  end
  
  def workers_comp
    @services = Service.all
  end
  
  def careers
    
  end
  
  def social_media
  end
  
  def press_kit
  end
  
  def partners
    
  end
  
  def accreditations
    
  end
  
  def nucleus
    respond_to do |format|
      format.html { render :layout => "nucleus"}
      format.xml  { render :xml => @events }
    end
  end
  
  def privacy_policy
    @articles = Article.all :limit => 10, :order => "created_at DESC"
  end
  
  def markets
    
  end
  
  def resources
    
  end

end
