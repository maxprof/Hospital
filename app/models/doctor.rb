class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users
  has_many :prices
  has_many :news
  has_many :appointments
  before_save :set_current_money

  def set_current_money
      self.doctor_week_price ||= self.doctor_hour_price.to_f*self.users.where("enter_date >= ?", 7.days.ago).count
  end

  def doctor_week_price
    doctor_hour_price.to_f*users.where("enter_date >= ?", 7.days.ago).count
  end

  def user_count_all_time
       users.all.count
  end

  def user_count_seven_days
       users.where("enter_date >= ?", 7.days.ago).count
  end



end

