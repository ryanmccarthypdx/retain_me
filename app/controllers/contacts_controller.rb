class ContactsController < ApplicationController
  def create
    if Contact.find_by_email(params[:contact][:email]) == nil
      Contact.create! contact_params
    end
    redirect_to root_path, notice: "Thanks for your interest, we'll be in touch!"
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end
end
