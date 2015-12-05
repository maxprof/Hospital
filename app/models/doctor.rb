class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users
  has_many :prices
  has_many :news
  has_many :appointments


  def current_money
    doctor_hour_price.to_f*users.where("enter_date >= ?", 7.days.ago).count
  end
end

