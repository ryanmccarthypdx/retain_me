class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    step_0_path
  end
end