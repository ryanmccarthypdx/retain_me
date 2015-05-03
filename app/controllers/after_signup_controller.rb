class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :step_1, :step_2

  def show
    @user = current_user
    case step
    when :step_2
      @profile = @user.find_profile
    end
    render_wizard
  end
end
