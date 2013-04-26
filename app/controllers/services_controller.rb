class ServicesController < ApplicationController
  load_and_authorize_resource

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end
 
  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(params[:service])
      if @service.save
        flash[:success] = "Service was created!"
        redirect_to @service
      else
        render 'new'
      end
  end

  def update
    @service = Service.find(params[:id])

      if @service.update_attributes(params[:service])
        flash[:success] = "Service was updated!"
        redirect_to @service
      else
        render 'edit'
      end
  
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    flash[:notice] = "Service was removed."
    redirect_to services_url
  end
end
