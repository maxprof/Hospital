class AddDoctorName < ActiveRecord::Migration
  def change
  	add_column :doctors, :doctor_first_name, :string
  	add_column :doctors, :doctor_second_name, :string
  end
end
