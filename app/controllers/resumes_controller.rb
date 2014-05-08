class ResumesController < ApplicationController



  def index
    @resumes = Resume.all.paginate(page: params[:page])
    @resume = Resume.new
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to root_path, alert: "The resume #{@resume.name} has been upload."
    else
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice: "The resume #{@resume.name} has been deleted."
  end


  private
  def resume_params
    params.require(:resume).permit(:name, :attachment, :email, :massage)
  end



end