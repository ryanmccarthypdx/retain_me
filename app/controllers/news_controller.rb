class NewsController < ApplicationController

  def create
    if current_user.news.create(news_params)
      redirect_to feed_path
    else
      flash.error = "Unable to save posting, sorry!"
      redirect_to feed_path
    end
  end

  def destroy
    current_user.news.find(params[:id]).try(:destroy)
    redirect_to feed_path
  end

  private

  def news_params
    params.required(:news).permit(:content)
  end
end
