class AfterSignupController < ApplicationController
  before_filter :authenticate_user!

  def step_0
    @user_basic_profile = current_user.basic_profile
    render 'step_0'
  end

  def step_1
    @user_basic_profile = current_user.basic_profile
    render 'step_1'
  end

  def step_2
    @user_basic_profile = current_user.basic_profile
    if @user_basic_profile.update(basic_profile_params)
      render 'step_2'
    end
  end

  def save
    @user_basic_profile = current_user.basic_profile
    if @user_basic_profile.update(basic_profile_params)
      redirect_to feed_path
    end
  end

  private

  def basic_profile_params
    params.require(:basic_profile).permit(:professional_brand_statement, :passion, :want_to_try, :perfect_weekend, :strengths, :next_year_goals)
  end
end
