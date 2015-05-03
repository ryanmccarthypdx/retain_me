class FeedController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to step_0_path if !current_user.basic_profile

    @news = News.order('created_at desc').page params[:page]
  end
end
