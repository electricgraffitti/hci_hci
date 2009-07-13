class HealthCareController < ApplicationController
  
  before_filter :coverflows
  
  def index
    @articles = Article.small_list(4)
    @documents = Document.all
  end
  
  def about
    
    respond_to do |format|
      format.html { render :layout => "layout2"}
      format.xml  { render :xml => @events }
    end
    
  end

end
