class AfterSignupController < ApplicationController
  before_filter :authenticate_user!

  def step_0
  end

  def step_1
  end

  def step_2
  end

  def save
    # save form details
    redirect_to feed_path
  end
end
