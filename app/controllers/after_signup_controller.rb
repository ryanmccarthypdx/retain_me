class AfterSignupController < ApplicationController
  before_filter :authenticate_user!

  def step_0
  end

  def step_1
  end

  def step_1_save
    current_user.basic_profile.update_attributes(basic_profile_params)
    redirect_to step_2_path
  end

  def step_2
  end

  def step_2_save
    current_user.basic_profile.update_attributes(basic_profile_params)
    redirect_to feed_path
  end

  private

  def basic_profile_params
    params.require(:basic_profile).permit(:professional_brand_statement, :passion, :want_to_try, :perfect_weekend, :strengths, :next_year_goals)
  end
end
