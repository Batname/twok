class ServicesController < ApplicationController
  def new
  end

  def show
    @service = Service.find(params[:id])
  end
end
