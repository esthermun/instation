class WelcomeController < ApplicationController
	# this helper method will prevent unauthorized user from accessing 
	# secret page is guarded from unauthorized users and will only run on the methods we tell it to.
  before_action :authenticate_member!, :only => :secret 


  def index
  end

  def secret
  end
end
