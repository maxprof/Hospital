class DoctorsController < ApplicationController
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]
	def index
		@doctors = Doctor.all
	end
end
