class ArticlesController < ApplicationController
  
  before_filter :require_user, :except => [:index, :show]
  
  # GET /articles
  # GET /articles.xml
  def index
    # @articles = Article.type(params[:article_type])
    @articles = Article.all :include => :assets, :order => "created_at DESC"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
      format.rss { render :rss => @articles }
      format.atom
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])
    @articles = Article.small_list(6)
    #fresh_when(:etag => @article)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new
    @article_types = ArticleType.all
    @article.assets.build
    @article.coverflows.build
    respond_to do |format|
      format.html { render :layout => "admin" }
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
    @article_types = ArticleType.all
    if @article.assets.blank?
      @article.assets.build
    end
    if @article.coverflows.blank?
      @article.coverflows.build
    end
    respond_to do |format|
      format.html { render :layout => "admin" }
    end
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to new_article_path }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])
    
    respond_to do |format|
      if @article.update_attributes(params[:article])
        flash[:notice] = 'Article was successfully updated.'
        format.html { redirect_to(@article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_path) }
      format.xml  { head :ok }
    end
  end
end
