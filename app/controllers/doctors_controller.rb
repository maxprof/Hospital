class DoctorsController < ApplicationController
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]
	def index
		@doctor = Doctor.all
	end

	def show
		@length =  User.where(doctor_id: params[:id]).size

		@length_length_for_seven_days = User.where("enter_date >= ?", 7.days.ago)
		@current_doctor_patients = @length_length_for_seven_days.where(doctor_id: params[:id]).size
	
	end

	private 

	 def set_doctor
        @doctor = Doctor.find(params[:id])
     end
end
 