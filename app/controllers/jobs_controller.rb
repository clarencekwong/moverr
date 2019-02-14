class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy, :accept, :complete, :cancel, :uncancel, :archived]
  skip_before_action :authorized, only: [:index]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @job.mover_id = session[:user_id]
    @job.status = "Accepted"
    @job.save
    redirect_to @job
  end

  def complete
    @job.status = "Completed"
    @job.save
    redirect_to @job
  end

  def cancel
    if @job.poster.id == session[:user_id]
      @job.status = "Canceled"
    elsif @job.mover.id == session[:user_id]
      @job.status = "Pending"
      @job.mover = nil
    end
    @job.save
    redirect_to @job
  end

  def uncancel
    if @job.mover
      @job.status = "Accepted"
    else
      @job.status = "Pending"
    end
    @job.save
    redirect_to @job
  end

  def archived
    @job.status = "Archived"
    @job.save
    redirect_to my_jobs_path
  end

  def my_jobs
    @posted_jobs = User.find(session[:user_id]).posted_jobs.where.not(status: "Archived")
    @accepted_jobs = User.find(session[:user_id]).mover_jobs.where.not(status: "Archived")
    @archived_posts = User.find(session[:user_id]).posted_jobs.where(status: "Archived")
    @archived_jobs = User.find(session[:user_id]).mover_jobs.where(status: "Archived")
    render :my_jobs
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :date, :status, :poster_id, furniture_ids: [])
    end
end
