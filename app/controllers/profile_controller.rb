class ProfileController < ApplicationController
  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(profile_params)
  end

  end

  private
  def profile_params
  	params.require(:profile).permit(:username, :avatar)
  end
end
