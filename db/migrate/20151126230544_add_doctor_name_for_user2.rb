class AddDoctorNameForUser2 < ActiveRecord::Migration
  def change
    add_column :users, :doctor_first_name, :string
    add_column :users, :doctor_second_name, :string
  end
end
