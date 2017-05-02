class RegistrationsController < ApplicationController
  private

  def sign_up_params
    params.require(:employee).permit(:first_name, :last_name, :bio, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:employee).permit(:first_name, :last_name, :bio, :email, :password, :password_confirmation, :current_password)
  end
end
