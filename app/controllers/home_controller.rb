class HomeController < ApplicationController

  def index
    redirect_to feed_path if current_user
  end
end
