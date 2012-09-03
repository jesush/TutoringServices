class TutoringSessionsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  # GET /tutoring_sessions
  # GET /tutoring_sessions.json
  def index
    @tutoring_sessions = TutoringSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutoring_sessions }
    end
  end

  # GET /tutoring_sessions/1
  # GET /tutoring_sessions/1.json
  def show
    @tutoring_session = TutoringSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutoring_session }
    end
  end

  # GET /tutoring_sessions/new
  # GET /tutoring_sessions/new.json
  def new
    @tutoring_session = TutoringSession.new
    #@tutoring_session = TutoringSession.new
    #@tutoring_session.user_id = current_user.id if !current_user.nil?
    @tutoring_session.description = "This is fun"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutoring_session }
    end
  end

  # GET /tutoring_sessions/1/edit
  def edit
    @tutoring_session = TutoringSession.find(params[:id])
  end

  # POST /tutoring_sessions
  # POST /tutoring_sessions.json
  def create
    @tutoring_session = TutoringSession.new(params[:tutoring_session])

    respond_to do |format|
      if @tutoring_session.save
        format.html { redirect_to @tutoring_session, notice: 'Tutoring session was successfully created.' }
        format.json { render json: @tutoring_session, status: :created, location: @tutoring_session }
      else
        format.html { render action: "new" }
        format.json { render json: @tutoring_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tutoring_sessions/1
  # PUT /tutoring_sessions/1.json
  def update
    @tutoring_session = TutoringSession.find(params[:id])

    respond_to do |format|
      if @tutoring_session.update_attributes(params[:tutoring_session])
        format.html { redirect_to @tutoring_session, notice: 'Tutoring session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutoring_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoring_sessions/1
  # DELETE /tutoring_sessions/1.json
  def destroy
    @tutoring_session = TutoringSession.find(params[:id])
    @tutoring_session.destroy

    respond_to do |format|
      format.html { redirect_to tutoring_sessions_url }
      format.json { head :no_content }
    end
  end
end
