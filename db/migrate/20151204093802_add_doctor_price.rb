class AddDoctorPrice < ActiveRecord::Migration
  def change
  	add_column :doctors, :doctor_hour_price, :integer
  end
end
