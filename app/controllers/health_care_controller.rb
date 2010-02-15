class HealthCareController < ApplicationController
  
  def index
    # @articles = Article.small_list(4)
    # @documents = Document.all
    # @services = Service.all
    @advertisements = Advertisement.current_list.small_list(1).order_list
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
  
  def PCI
    redirect_to service_path(:id => 1)
  end
  
  def FCI
    redirect_to service_path(:id => 3)
  end
  
  def DCI
    redirect_to service_path(:id => 2)
  end
  
  def OCI
    redirect_to service_path(:id => 7)
  end

end
