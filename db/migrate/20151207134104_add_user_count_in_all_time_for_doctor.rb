class AddUserCountInAllTimeForDoctor < ActiveRecord::Migration
  def change
  	add_column :doctors, :doctor_all_time_users, :float
  end
end
