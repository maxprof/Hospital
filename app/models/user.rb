class User < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :appointments
end
