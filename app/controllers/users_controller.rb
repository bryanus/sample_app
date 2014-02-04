class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)    #calls private method below; will only be used internally by the Users controller and need not be exposed to external users via the web
    if @user.save
    	flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
  	@user = User.find_by(params[:id])
  end

  private

    def user_params #require user attriubte but only permit these attributes
      params.require(:user).permit(:name, :email, :password, 
                                   :password_confirmation)
    end

  
end
