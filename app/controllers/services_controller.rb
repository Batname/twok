class ServicesController < ApplicationController

  before_action :current_id


  def new
  end

  def show
    @service = Service.find(params[:id])
    @projects = @service.projects
    @services = Service.sorted

  end
end


private

def current_id
  @current_id = Service.find(params[:id])
end