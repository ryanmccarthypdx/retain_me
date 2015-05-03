class FeedController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to step_0_path if !current_user.linkedin_oauth_setting
  end
end
