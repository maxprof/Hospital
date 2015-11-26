class Price < ActiveRecord::Base
	 validates :price, presence: true
	 validates :title, presence: true
	 belongs_to :doctor
end
