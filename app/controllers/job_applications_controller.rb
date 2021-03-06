class JobApplicationsController < ApplicationController
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]


  def index
    @jas = JobApplication.all
    @applicantions = current_user.job_applications

  end


  def show
  end


  def new
    @ja = current_user.job_applications.build
  end


  def edit
  end

  def create
    @ja = current_user.job_applications.build(job_application_params)

    respond_to do |format|
      if @ja.save
        format.html { redirect_to @ja, notice: 'Job application was successfully created.' }
        format.json { render :show, status: :created, location: @ja }
      else
        format.html { render :new }
        format.json { render json: @ja.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ja.update(job_application_params)
        format.html { redirect_to @ja, notice: 'Job application was successfully updated.' }
        format.json { render :show, status: :ok, location: @ja }
      else
        format.html { render :edit }
        format.json { render json: @ja.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @ja.destroy
    respond_to do |format|
      format.html { redirect_to job_applications_url, notice: 'Job application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_job_application
      @ja = JobApplication.find(params[:id])
    end


    def job_application_params
      params.require(:job_application).permit(:name, :linkedin, :other, :job_id, :user_id, :resume)
    end


end
