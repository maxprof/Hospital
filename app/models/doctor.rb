class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users
  has_many :prices
  has_many :news
  before_save :set_current_money
  before_save :set_user_count_all_time


  def set_user_count_all_time
      self.doctor_all_time_users ||= self.users.all.count
  end

  def set_current_money
      self.doctor_week_price ||= self.doctor_hour_price.to_f*self.users.where("enter_date >= ?", 7.days.ago).count
  end

  def set_user_count_seven_days
      self.user_count_seven_days ||= self.users.where("enter_date >= ?", 7.days.ago).count
  end
  
  def doctor_week_price
    doctor_hour_price.to_f*users.where("enter_date >= ?", 7.days.ago).count
  end

  def doctor_all_time_users
    users.all.count
  end

  def user_count_seven_days
       users.where("enter_date >= ?", 7.days.ago).count
  end



end

