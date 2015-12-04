class Price < ActiveRecord::Base
	 validates :price, presence: true
	 validates :title, presence: true
	 belongs_to :doctor
	 has_many :appointments
end
