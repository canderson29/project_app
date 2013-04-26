class ProjectsController < ApplicationController
  before_filter :get_service
  load_and_authorize_resource
 
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = @service.projects.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = @service.projects.build(params[:project])
    if @project.save
      flash[:success] = "Project was created!"
      redirect_to service_path(@service)
    else
     render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = "Project was updated!"
      redirect_to service_project_path(@service,@project)
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project was removed"
    redirect_to service_path(@service)
  end

  def get_service
    @service = Service.find(params[:service_id])
  end
end
