class VideosController < ApplicationController
  
  def index
    # @videos = Youtube::Playlist.find("BE2C0A7B44EDFBF8")
    
    #@videos = Video.uploaded_by('3212975DA36BD325')
    
    @videos = Video.uploaded_by('HCInsight')
    
  end

  def show
    @video = Video.find_by_id(params[:id])
  end
  
  def new
    @categories ||= Video.categories_collection
  end

  def upload
    @upload_info = Video.get_upload_url(params[:video])
  end
  

end
