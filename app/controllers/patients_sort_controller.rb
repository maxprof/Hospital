class PatientsSortController < ApplicationController
  def last_three
  	  @users = User.where("enter_date >= ?", 3.days.ago)
  end

  def last_seven
  	@users = User.where("enter_date >= ?", 7.days.ago)
  end

  def last_one
  	@users = User.where("enter_date >= ?", 1.days.ago)
  end
end
