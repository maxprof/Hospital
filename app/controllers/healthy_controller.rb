class HealthyController < ApplicationController
  def index
  	@users = User.where(status: true)
  end
end
