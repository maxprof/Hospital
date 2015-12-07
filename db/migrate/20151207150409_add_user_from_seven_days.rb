class AddUserFromSevenDays < ActiveRecord::Migration
  def change
  	add_column :doctors, :user_count_seven_days, :float
  end
end
 