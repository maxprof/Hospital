class AddDoctorIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doctor_id, :integer
  end
end
