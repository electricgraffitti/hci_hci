class HealthCareController < ApplicationController
  
  def index
    # @articles = Article.small_list(4)
    # @documents = Document.all
    # @services = Service.all
    @advertisements = Advertisement.current_list.small_list(1).order_list
    banners = Banner.active_banners
    @banner = Banner.random(banners)
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
    end
  end
  
  def landing_page2
    respond_to do |format|
      format.html { render :layout => "landing_pages"}
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
    redirect_to "http://www.get-nucleus.com"
    # respond_to do |format|
    #   format.html { render :layout => "nucleus"}
    #   format.xml  { render :xml => @events }
    # end
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
  
  def OldPublicSector
    redirect_to public_sector_path
  end
  
  def OldPrivateSector
    redirect_to private_sector_path
  end
  
  def OldPandC
    redirect_to workers_comp_path
  end
  
  def OldAboutUs
    redirect_to about_path
  end
  
  def OldCareers
    redirect_to careers_path
  end
  
  def OldServices
    redirect_to services_path
  end

end
