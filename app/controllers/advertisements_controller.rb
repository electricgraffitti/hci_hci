class AdvertisementsController < ApplicationController
  
  before_filter :require_user
  
  # GET /advertisements
  # GET /advertisements.xml
  def index
    @advertisements = Advertisement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advertisements }
    end
  end

  # GET /advertisements/1
  # GET /advertisements/1.xml
  def show
    @advertisement = Advertisement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advertisement }
    end
  end

  # GET /advertisements/new
  # GET /advertisements/new.xml
  def new
    @advertisement = Advertisement.new

    respond_to do |format|
      format.html { render :layout => "admin" }
      format.xml  { render :xml => @advertisement }
    end
  end

  # GET /advertisements/1/edit
  def edit
    @advertisement = Advertisement.find(params[:id])
    render :layout => "admin"
  end

  # POST /advertisements
  # POST /advertisements.xml
  def create
    @advertisement = Advertisement.new(params[:advertisement])

    respond_to do |format|
      if @advertisement.save
        flash[:notice] = 'Advertisement was successfully created.'
        format.html { redirect_to(@advertisement) }
        format.xml  { render :xml => @advertisement, :status => :created, :location => @advertisement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advertisement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advertisements/1
  # PUT /advertisements/1.xml
  def update
    @advertisement = Advertisement.find(params[:id])

    respond_to do |format|
      if @advertisement.update_attributes(params[:advertisement])
        flash[:notice] = 'Advertisement was successfully updated.'
        format.html { redirect_to(@advertisement) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advertisement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisements/1
  # DELETE /advertisements/1.xml
  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy

    respond_to do |format|
      format.html { redirect_to(advertisements_url) }
      format.xml  { head :ok }
    end
  end
end
