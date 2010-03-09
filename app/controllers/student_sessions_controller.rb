class StudentSessionsController < ApplicationController
  # GET /student_sessions
  # GET /student_sessions.xml
  def index
    @student_sessions = StudentSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_sessions }
    end
  end

  # GET /student_sessions/1
  # GET /student_sessions/1.xml
  def show
    @student_session = StudentSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_session }
    end
  end

  # GET /student_sessions/new
  # GET /student_sessions/new.xml
  def new
    @student_session = StudentSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_session }
    end
  end

  # GET /student_sessions/1/edit
  def edit
    @student_session = StudentSession.find(params[:id])
  end

  # POST /student_sessions
  # POST /student_sessions.xml
  def create
    @student_session = StudentSession.new(params[:student_session])

    respond_to do |format|
      if @student_session.save
        flash[:notice] = 'StudentSession was successfully created.'
        format.html { redirect_to(@student_session) }
        format.xml  { render :xml => @student_session, :status => :created, :location => @student_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_sessions/1
  # PUT /student_sessions/1.xml
  def update
    @student_session = StudentSession.find(params[:id])

    respond_to do |format|
      if @student_session.update_attributes(params[:student_session])
        flash[:notice] = 'StudentSession was successfully updated.'
        format.html { redirect_to(@student_session) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_sessions/1
  # DELETE /student_sessions/1.xml
  def destroy
    @student_session = StudentSession.find(params[:id])
    @student_session.destroy

    respond_to do |format|
      format.html { redirect_to(student_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
