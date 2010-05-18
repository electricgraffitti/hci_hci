class TutorialVideosController < ApplicationController
  # GET /tutorial_videos
  # GET /tutorial_videos.xml
  def index
    @tutorial_videos = TutorialVideo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tutorial_videos }
    end
  end

  # GET /tutorial_videos/1
  # GET /tutorial_videos/1.xml
  def show
    @tutorial_video = TutorialVideo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutorial_video }
    end
  end

  # GET /tutorial_videos/new
  # GET /tutorial_videos/new.xml
  def new
    @tutorial_video = TutorialVideo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutorial_video }
    end
  end

  # GET /tutorial_videos/1/edit
  def edit
    @tutorial_video = TutorialVideo.find(params[:id])
  end

  # POST /tutorial_videos
  # POST /tutorial_videos.xml
  def create
    @tutorial_video = TutorialVideo.new(params[:tutorial_video])

    respond_to do |format|
      if @tutorial_video.save
        flash[:notice] = 'TutorialVideo was successfully created.'
        format.html { redirect_to(@tutorial_video) }
        format.xml  { render :xml => @tutorial_video, :status => :created, :location => @tutorial_video }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutorial_video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tutorial_videos/1
  # PUT /tutorial_videos/1.xml
  def update
    @tutorial_video = TutorialVideo.find(params[:id])

    respond_to do |format|
      if @tutorial_video.update_attributes(params[:tutorial_video])
        flash[:notice] = 'TutorialVideo was successfully updated.'
        format.html { redirect_to(@tutorial_video) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutorial_video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_videos/1
  # DELETE /tutorial_videos/1.xml
  def destroy
    @tutorial_video = TutorialVideo.find(params[:id])
    @tutorial_video.destroy

    respond_to do |format|
      format.html { redirect_to(tutorial_videos_url) }
      format.xml  { head :ok }
    end
  end
end
