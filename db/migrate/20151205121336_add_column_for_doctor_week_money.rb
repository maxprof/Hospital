class AddColumnForDoctorWeekMoney < ActiveRecord::Migration
  def change
  	add_column :doctors, :doctor_week_price, :float
  end
end
