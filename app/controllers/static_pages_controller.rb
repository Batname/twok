class StaticPagesController < ApplicationController
  def home
    @teams = Team.sorted
  end

  def help
  end

  def about
  end
end
