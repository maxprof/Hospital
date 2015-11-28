class HealthyController < ApplicationController
  def index
  	@users = User.where(status: false)
  end
end
