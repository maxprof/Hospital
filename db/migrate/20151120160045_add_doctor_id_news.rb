class AddDoctorIdNews < ActiveRecord::Migration
  def change
    add_column :news, :doctor_id, :integer
  end
end
