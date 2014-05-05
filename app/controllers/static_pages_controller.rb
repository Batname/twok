class StaticPagesController < ApplicationController
  def home
    @teams = Team.sorted
    @services = Service.sorted
    @projects = Project.sorted
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @resume = Resume.new


  end

  def help
  end

  def about
  end


end
