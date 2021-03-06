class SessionsController < ApplicationController
	def new
	end

	def create
    user = User.find_by(email: params[:session][:email].downcase)  
    if user && user.authenticate(params[:session][:password])
    	sign_in user
    	redirect_to user #profile page
    else
    	flash.now[:error] = 'Invalid email/password combination'
    	render 'new' #ie new.html.erb
    end

  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
