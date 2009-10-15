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
  
  def issuu
  
  end

end
