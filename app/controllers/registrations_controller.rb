class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:doctor).permit(:doctor_first_name, :doctor_second_name, :email, :password, :password_confirmation, :doctor_hour_price, :doctor_week_price, :doctor_all_time_users)
  end

  def account_update_params
    params.require(:doctor).permit(:doctor_first_name, :doctor_second_name, :email, :password, :password_confirmation, :current_password, :doctor_hour_price, :doctor_week_price, :doctor_all_time_users) 
  end
end