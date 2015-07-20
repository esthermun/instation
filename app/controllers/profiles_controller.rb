class ProfilesController < ApplicationController
  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(profile_params)
  	@profile.user_id = current_user.id
  	@profile.save
  end

  def show
  	@profile = Profile.find(params[:id])
  end

  private
  def profile_params
  	params.require(:profile).permit(:username, :avatar)
  end
end
